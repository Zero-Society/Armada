#include <eos.hpp>


// The purpose of this contract is to create tokens for the supply chain and use it to review the actions of the players etc
// based off of EOS social contract

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
	static Name table_id() { return Name("review");}
};


void apply_review() {
   const auto& review   = current_action<review_action>();
   require_auth( review.voter );

   eosio_assert( current_context() == review.voter, "cannot call from any other context" );
   
   static post_record& existing;
   if( !Db::get( review.reviewid, existing ) )
      Db::store( review.reviewid, rate_record( now() ) );
}

void do_vote() {
   const auto& rate  = current_action<rate_action>();
   require_recipient( rate.voter, rate.wholesaler );
   disable_context_code( rate.wholesaler() ); /// prevent the author's code from rejecting the potentially negative vote

   auto context = current_context();
   auto voter = rate.getVoter();

   if( context == rate.wholesaler ) {
      static post_record post;
      eosio_assert( Db::get( rate.reviewid, post ) > 0, "unable to find review" );
      rate.votes += rate.rating;
      Db::store( rate.reviewid, post );
   } 
   else if( context == rate.voter ) {
      static account vote_account;
      Db::get( "account", vote_account );
      auto abs_vote = abs(vote.rating);
      vote_account.vote_power = min( vote_account.social_power,
                                     vote_account.vote_power + (vote_account.social_power * (now()-last_vote)) / days(7));
      eosio_assert( abs_vote <= vote_account.vote_power, "insufficient vote power" );
      post.votes += vote.rating;
      vote_account.rating -= abs_vote;
      vote_account.last_vote  = now();
      Db::store( "account", vote_account );
   } else {
      eosio_assert( false, "invalid context for execution of this vote" );
   }