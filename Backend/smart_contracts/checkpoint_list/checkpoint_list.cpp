#include <eosiolib/eosio.hpp>
#include <eosiolib/print.hpp>
using namespace eosio;

class example : public eosio::contract {
 public:
     using contract::contract;

     example(account_name s):
     	contract(s),
     	_orders(s, s)
 	{
 		print("constructor");
 	}

     /// @abi action
     void hi( account_name user ) {
             print( "Hello, ", name{user} );
     }

     /// @abi action
     void createorder(uint64_t productId) {
     	print ("createorder " , productId);


     	_orders.emplace(_self, [&]( auto& s) {
     		s.productId = productId;
     	});
     }

     ///
  private:

  	// @abi struct
  	struct Order {
  		uint64_t id;
  		uint64_t productId;
  		
  		uint64_t primary_key() const {
  			return id;
  		}

  		EOSLIB_SERIALIZE(Order, (id)(productId))
  	};

  	// @abi table
  	typedef eosio::multi_index<N(orders), Order> orders;
  	orders _orders;
  	//std::vector<account_name, uint32_t> orders;
};

EOSIO_ABI( example, (hi)(createorder) )
