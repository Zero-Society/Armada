# CMake generated Testfile for 
# Source directory: /eos/contracts/test.inline
# Build directory: /opt/eosio/contracts/test.inline
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_test.inline_abi "/opt/eosio/scripts/abi_is_json.py" "/eos/contracts/test.inline/test.inline.abi")
