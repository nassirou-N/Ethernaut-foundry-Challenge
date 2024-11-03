// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/HelloEthernaut.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract HelloEthenautSolution is Script {

    Instance public level0 = Instance(0xA78585EC59f2227dB535dD44073b52DB7A37b561);

    function run() external {
        string memory password = level0.password();
        console.log("Password: ", password);
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        level0.authenticate(password);
        vm.stopBroadcast();
    }
}