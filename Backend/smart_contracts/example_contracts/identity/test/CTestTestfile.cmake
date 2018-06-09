# CMake generated Testfile for 
# Source directory: /eos/contracts/identity/test
# Build directory: /opt/eosio/contracts/identity/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_identity_test_abi "/opt/eosio/scripts/abi_is_json.py" "identity_test.abi")
