// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Script.sol";
import "../src/MyToken.sol";

contract DeployMyToken is Script {
    function run() external returns (MyToken) {
        vm.startBroadcast();

        MyToken myToken = new MyToken(1000000);

        vm.stopBroadcast();

        return myToken;
    }
}
