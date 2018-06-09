# CMake generated Testfile for 
# Source directory: /eos/contracts/asserter
# Build directory: /opt/eosio/contracts/asserter
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_asserter_abi "/opt/eosio/scripts/abi_is_json.py" "/eos/contracts/asserter/asserter.abi")
