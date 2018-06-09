# CMake generated Testfile for 
# Source directory: /eos/contracts/tic_tac_toe
# Build directory: /opt/eosio/contracts/tic_tac_toe
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_tic_tac_toe_abi "/opt/eosio/scripts/abi_is_json.py" "/eos/contracts/tic_tac_toe/tic_tac_toe.abi")
