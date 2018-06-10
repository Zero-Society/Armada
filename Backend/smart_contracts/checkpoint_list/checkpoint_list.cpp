#include <eosiolib/eosio.hpp>
#include <eosiolib/print.hpp>
#include <unordered_map>
#include <map>
using namespace eosio;

class example : public eosio::contract {
 public:
     using contract::contract;

     example(account_name s):
     	contract(s),
     	tableorders(s, s)
 	{
 		print("constructor5555555");
 	}

     /// @abi action
     void hi( account_name user ) {
             print( "Hello, ", name{user} );
     }

     /// @abi action
     void createorder(uint64_t productId) {

     	auto pk = tableorders.available_primary_key();

     	print ("createorder " , productId, " next primary key: ", pk);


     	tableorders.emplace(_self, [&]( auto& s) {
     		s.id = pk;
     		s.productId = productId;
     		s.lastCheckpointId = 0;
     	});
     }

     /// @abi action
     void checkpoint(uint64_t orderId, uint64_t checkpointId) {
     	auto existing = tableorders.find(orderId);
     	if (existing == tableorders.end()) {
     		// not found
     		return;
     	}

     	//update last checkpoint
     	tableorders.modify(existing, 0, [&](auto& a) {
     		a.lastCheckpointId = checkpointId;
     	}) ;
     }

     /// @abi action
     void clear() {
     	print ("clear");
     	//tableorders.get<by_age>().clear();
     	//MapTable().swap(tableorders);
     	//tableorders.get().clear();

     }

  	/// @abi table orders
  	struct Order {
  		uint64_t id;
  		uint64_t productId;
  		uint64_t lastCheckpointId;
  		

  		uint64_t primary_key() const {
  			return id;
  		}

  		uint64_t by_age()const { return id; }

  		EOSLIB_SERIALIZE(Order, (id)(productId)(lastCheckpointId))
  	};






// We setup the table usin multi_index container:
    /// @######abi table
    //typedef eosio::multi_index< N(people), person, indexed_by<N(byage), const_mem_fun<person, uint64_t, &person::by_age>>>  people;
    
    // Creating the instance of the `people` type
    //people _people;




  	/// @abi table
  	typedef eosio::multi_index<N(orders), Order, indexed_by<N(byage), const_mem_fun<Order, uint64_t, &Order::by_age>>> orders;

  	orders tableorders;
  	
};

EOSIO_ABI( example, (hi)(createorder) )
