# CMake generated Testfile for 
# Source directory: /eos/contracts/hello
# Build directory: /opt/eosio/contracts/hello
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_hello_abi "/opt/eosio/scripts/abi_is_json.py" "/eos/contracts/hello/hello.abi")
