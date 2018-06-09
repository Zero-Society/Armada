# CMake generated Testfile for 
# Source directory: /eos/contracts/eosio.msig
# Build directory: /opt/eosio/contracts/eosio.msig
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_eosio.msig_abi "/opt/eosio/scripts/abi_is_json.py" "/eos/contracts/eosio.msig/eosio.msig.abi")
