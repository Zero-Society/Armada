# CMake generated Testfile for 
# Source directory: /eos/contracts/stltest
# Build directory: /opt/eosio/contracts/stltest
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_stltest_abi "/opt/eosio/scripts/abi_is_json.py" "stltest.abi")
