# CMake generated Testfile for 
# Source directory: /eos/contracts/noop
# Build directory: /opt/eosio/contracts/noop
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_noop_abi "/opt/eosio/scripts/abi_is_json.py" "/eos/contracts/noop/noop.abi")
