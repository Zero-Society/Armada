# CMake generated Testfile for 
# Source directory: /eos/contracts/eosio.bios
# Build directory: /opt/eosio/contracts/eosio.bios
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_eosio.bios_abi "/opt/eosio/scripts/abi_is_json.py" "/eos/contracts/eosio.bios/eosio.bios.abi")
