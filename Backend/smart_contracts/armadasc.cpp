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

         // registering oracle account function

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

         // Regstering asset function

         void register_asset( const account_name owner, const uint64_t asset_id ) { 
            require_auth( owner );
            assets_table t( _self, _self );
            auto itr = t.find( asset_id );
            eosio_assert( itr == t.end(), "asset already exists" );
            eosio_assert( asset_id != 0, "Error: asset error" );
            t.emplace(owner, [&](assetrows& x) {
                  x.owner = owner;
                  x.asset_id = asset_id;
               });
         }

         //track and trace of asset location

         void check_asset( const account_name owner,
         					const account_name oracle,
         					const identity_name asset_id,
         					const vector<checkvalue>& checks){
         	require_auth( oracle);
         	if (owner != oracle)
         		require_auth(oracle);

         	assets_table t(_self, _self);
         	eosio_assert( t.find( asset_id) != t.end(), "asset does not exist");

         	//asset search
         	track_table tracker( _self, asset_id);

         	for( const auto& check : checks){
         		auto idx = tracker.template get_index<N(bytuple)>();
         		eosio_assert(check.type.size() <= 32, "not longer than 32 bytes");
         		auto itr = idx.lower_bound( trackrow::key(check.property, check, oracle)

         			if(itr != idx.end() && itr->property == check.property && itr->check == check && itr->oracle == oracle){
         				idx.modify(itr, 0, [&] (trackrow& row){
         					row.type = check.type;
         					row.data = check.data;
         				});
         			} else{
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
	};
}

EOSIO_ABI( armada::contract, (check_asset)(register_account)(register_asset) );