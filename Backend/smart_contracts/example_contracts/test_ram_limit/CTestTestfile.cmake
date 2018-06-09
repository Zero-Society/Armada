# CMake generated Testfile for 
# Source directory: /eos/contracts/test_ram_limit
# Build directory: /opt/eosio/contracts/test_ram_limit
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_test_ram_limit_abi "/opt/eosio/scripts/abi_is_json.py" "/eos/contracts/test_ram_limit/test_ram_limit.abi")
