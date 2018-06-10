#include "common.hpp"
#include <eosiolib/contract.hpp>
#include <eosiolib/dispatcher.hpp>
#include <eosiolib/vector.hpp>

namespace armada {
   using eosio::action_meta;
   using eosio::singleton;
   using eosio::key256;
   using std::string;
   using std::vector;



class contract : public armada_base{
   public:
      using armada_base::armada_base;

         void settrust( const account_name trustor, ///< the account authorizing the trust
                        const account_name trusting, ///< the account receiving the trust
                        const uint8_t      trust = 0 )/// 0 to remove, -1 to mark untrusted, 1 to mark trusted
         {
            require_auth( trustor );
            require_recipient( trusting );

            trust_table table( _self, trustor );
            auto itr = table.find(trusting);
            if( itr == table.end() && trust > 0 ) {
               table.emplace( trustor, [&](trustrow& row) {
                     row.account = trusting;
                  });
            } else if( itr != table.end() && trust == 0 ) {
               table.erase(itr);
            }
         }

         void register_account(const account_name owner, const uint64_t identity){
            require_auth( owner );
            nodes_table t(_self, _self);
            auto itr = t.find( identity);
            eosio_assert( itr == t.end(), "identity already exists");
            eosio_assert( identity !=0, "identity = 0 is not allowed");
            t.emplace(owner, [&](nodesrows& x){
               x.owner = owner;
               x.identity = identity;
            });
         }

         void register_asset( const account_name owner, const uint64_t asset_id ) {
            require_auth( owner );
            assets_table t( _self, _self );
            auto itr = t.find( asset_id );
            eosio_assert( itr == t.end(), "asset already exists" );
            eosio_assert( asset_id != 0, "asset=0 is not allowed" );
            t.emplace(owner, [&](assetrows& x) {
                  x.owner = owner;
                  x.asset_id = asset_id;
               });
         }

         void check_asset( const account_name owner,
                        const account_name oracle,
                        const identity_name asset_id,
                        const vector<checkvalue>& checks){
            require_auth( oracle);
            if (owner != oracle){
               require_auth(oracle);
            }

            assets_table t(_self, _self);
            eosio_assert( t.find( asset_id) != t.end(), "asset does not exist");

            //asset search
            identity::track_table tracker( _self, asset_id);

            for( const auto& check : checks){
               auto idx = tracker.template get_index<N(bytuple)>();
               eosio_assert(check.type.size() <= 32, "not longer than 32 bytes");
               auto itr = idx.lower_bound( identity::trackrow::key(check.property, check, oracle)

                  if(itr != idx.end() && itr->property == check.property && itr->check == check && itr->oracle == oracle){
                     idx.modify(itr, 0, [&] (trackrow& row){
                        row.type = check.type;
                        row.data = check.data;
                     });
                  } 
                  else{
                     auto pk = tracker.available_primary_key();
                     tracker.emplace(_self, [&](trackrow& row){
                        row.id = pk;
                        row.property = check.property;
                        row.check = check;
                        row.oracle = oracle;
                        row.type = check.type;
                        row.data = check.data;
                     });
                  }
                  auto itr_old = idx.lower_bound( trackrow::key(check.property, !check, oracle));
                  if (itr_old !=idx.end() && itr_old->property == check.property && itr_old->check == !check && itr_old->oracle ==oracle){
                     idx.erase(itr_old);
                  }
            }
         }

         void certification ( const account_name owner,
                           const account_name certifier,
                           const identity_name identity,
                           const vector<certvalue>& values ){

            require_auth( certifier);
            if (owner != certifier)
               require_auth(owner);

            nodes_table t(_self, _self);
            eosio_assert( t.find( identity ) != t.end(), "identity does not exist");

            //identity search

            certs_table certs( _self, identity );
            bool trusted = is_trusted( certifier );

            for( const auto& value : values ) {
               auto idx = certs.template get_index<N(bytuple)>();
               if (value.confidence) {
                  eosio_assert(value.type.size() <= 32, "certrow::type should be not longer than 32 bytes");
                  auto itr = idx.lower_bound( certrow::key(value.property, trusted, certifier) );

                  if (itr != idx.end() && itr->property == value.property && itr->trusted == trusted && itr->certifier == certifier) {
                     idx.modify(itr, 0, [&](certrow& row) {
                           row.confidence = value.confidence;
                           row.type       = value.type;
                           row.data       = value.data;
                        });
                  } else {
                     auto pk = certs.available_primary_key();
                     certs.emplace(_self, [&](certrow& row) {
                           row.id = pk;
                           row.property   = value.property;
                           row.trusted    = trusted;
                           row.certifier  = certifier;
                           row.confidence = value.confidence;
                           row.type       = value.type;
                           row.data       = value.data;
                        });
                  }

                  auto itr_old = idx.lower_bound( certrow::key(value.property, !trusted, certifier) );
                  if (itr_old != idx.end() && itr_old->property == value.property && itr_old->trusted == !trusted && itr_old->certifier == certifier) {
                     idx.erase(itr_old);
                  }

                  //special handling for owner
                  if (value.property == N(owner)) {
                     eosio_assert(sizeof(account_name) == value.data.size(), "data size doesn't match account_name size");
                     account_name acnt = *reinterpret_cast<const account_name*>(value.data.data());
                     if (certifier == acnt) { //only self-certitication affects accounts_table
                        accounts_table( _self, acnt ).set( identity, acnt );
                     }
                  }
               } else {
                  bool removed = false;
                  auto itr = idx.lower_bound( certrow::key(value.property, trusted, certifier) );
                  if (itr != idx.end() && itr->property == value.property && itr->trusted == trusted && itr->certifier == certifier) {
                     idx.erase(itr);
                  } else {
                     removed = true;
                  }
                  itr = idx.lower_bound( certrow::key(value.property, !trusted, certifier) );
                  if (itr != idx.end() && itr->property == value.property && itr->trusted == !trusted && itr->certifier == certifier) {
                     idx.erase(itr);
                  } else {
                     removed = true;
                  }
                  //special handling for owner
                  if (value.property == N(owner)) {
                     eosio_assert(sizeof(account_name) == value.data.size(), "data size doesn't match account_name size");
                     account_name acnt = *reinterpret_cast<const account_name*>(value.data.data());
                     if (certifier == acnt) { //only self-certitication affects accounts_table
                        accounts_table( _self, acnt ).remove();
                     }
                  }
               }
            }
         }
   };
}

EOSIO_ABI( armada::contract, (check_asset)(certification)(settrust)(register_account)(register_asset) );
