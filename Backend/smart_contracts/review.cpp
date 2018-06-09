#include <eos.hpp>


// The purpose of this contract is to create tokens for the supply chain and use it to review the actions of the players etc

struct review_action {
	account_name voter;
	review_name reviewid;
	account_name wholesaler;
	int32_t num_id;
	uint8_t voter;
	char[] data;

	account_name get_voter()const {return get_notify(voter);}

};

struct rate_action {
	account_name voter;
	account_name wholesaler;
	review_name reviewid;
	int32_t rating;
};

struct rate_record{
	uint64_t total_rating =0;
	uint64_t claimed_rating =0;
	uint32_t created;

	review_record( uint32_t c = now() ):created(c){}
	static Name table_id() { return Name("post");}
};




