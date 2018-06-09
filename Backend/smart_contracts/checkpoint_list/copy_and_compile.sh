alias eosiocpp='docker exec eosio eosiocpp'
docker cp . eosio:/checkpoint_list/
eosiocpp -o /checkpoint_list/checkpoint_list.wast /checkpoint_list/checkpoint_list.cpp
eosiocpp -g /checkpoint_list/checkpoint_list.abi /checkpoint_list/checkpoint_list.cpp
