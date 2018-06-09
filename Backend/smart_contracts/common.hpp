#pragma once

#include <eosiolib/singleton.hpp>
#include <eosiolib/multi_index.hpp>

namespace identity {

   typedef uint64_t identity_name;
   typedef uint64_t property_name;
   typedef uint64_t property_type_name;

   struct trackrow {
      uint64_t            id;
      property_name       property;
      uint64_t            check;
      account_name        oracle;
      std::string         type;
      std::vector<char>   data;
      uint64_t primary_key() const { return id; }
      static eosio::key256 key(uint64_t property, uint64_t oracle) {
         return eosio::key256::make_from_word_sequence<uint64_t>(property, check, oracle);
      }
      eosio::key256 get_key() const { return key(property, check, oracle); }

      EOSLIB_SERIALIZE( trackrow , (property)(check)(oracle)(confidence)(type)(data)(id) )
   };

   struct nodesrow {
      uint64_t     identity;
      account_name owner;

      uint64_t primary_key() const { return identity; }

      EOSLIB_SERIALIZE( nodesrow , (identity)(owner) )
   };

   struct assetrows {
      uint64_t     asset_id;
      account_name owner;

      uint64_t primary_key() const { return asset_id; }

      EOSLIB_SERIALIZE( assetrows , (asset_id)(owner) )
   };


   typedef eosio::multi_index<N(assets), trackrow,
                              eosio::indexed_by< N(bytuple), eosio::const_mem_fun<certrow, eosio::key256, &certrow::get_key> >
                              > track_table;
   typedef eosio::multi_index<N(ident), nodesrow> nodes_table;
   typedef eosio::multi_index<N(asset), assetrows> assets_table;
   typedef eosio::singleton<N(account), identity_name>  accounts_table;

   class armada_base {
      public:
         armada_base( account_name acnt) : _self( acnt ) {}

         bool is_trusted_by( account_name trusted, account_name by );

         bool is_trusted( account_name acnt );

      protected:
         account_name _self;
   };

}

