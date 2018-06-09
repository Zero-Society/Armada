#otherwise my terminal fux up
setopt +o nomatch
docker exec eosio rm /checkpoint_list/checkpoint_list.abi
docker exec eosio rm /checkpoint_list/checkpoint_list.cpp
docker exec eosio rm /checkpoint_list/checkpoint_list.wasm
docker exec eosio rm /checkpoint_list/checkpoint_list.wast
docker exec eosio rm /checkpoint_list/copy_and_compile.sh
