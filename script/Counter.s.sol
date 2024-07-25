// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
  address deployer;
  function setUp() public {}

  function run() public {
    uint256 privateKey = vm.envUint("PRIVATE_KEY");
    address account = vm.addr(privateKey);
    console.log("Account", account);
    vm.startBroadcast(privateKey);
    Counter counter = new Counter();
    vm.stopBroadcast();
  }
}
