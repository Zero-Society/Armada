# CMake generated Testfile for 
# Source directory: /eos/contracts/simple.token
# Build directory: /opt/eosio/contracts/simple.token
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_simple.token_abi "/opt/eosio/scripts/abi_is_json.py" "/eos/contracts/simple.token/simple.token.abi")
