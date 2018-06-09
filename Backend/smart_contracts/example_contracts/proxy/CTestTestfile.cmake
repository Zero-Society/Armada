# CMake generated Testfile for 
# Source directory: /eos/contracts/proxy
# Build directory: /opt/eosio/contracts/proxy
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_proxy_abi "/opt/eosio/scripts/abi_is_json.py" "/eos/contracts/proxy/proxy.abi")
