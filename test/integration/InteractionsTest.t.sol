// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {CreateSubscription, FundSubscription, AddConsumer} from "../../script/Interactions.s.sol";

contract IntegrationsTest is Test {
    modifier skipFork() {
        if (block.chainid != 31337) {
            return;
        }
        _;
    }

    function testInteractions() public skipFork {
        // HelperConfig helperConfig = new HelperConfig();
        // (
        //     ,
        //     ,
        //     address vrfCoordinator,
        //     ,
        //     ,
        //     ,
        //     address link,
        //     uint256 deployerKey
        // ) = helperConfig.activeNetworkConfig();
        CreateSubscription createSubscription = new CreateSubscription();
        // FundSubscription fundSubscription = new FundSubscription();

        uint64 subId = createSubscription.run();
        // vm.recordLogs();
        // fundSubscription.run();
        // Vm.Log[] memory entries = vm.getRecordedLogs();
        // bytes32 subscriptionBalance = entries[0].topics[3];

        assert(subId != uint64(0));
        // assert(uint256(subscriptionBalance) == 3 ether);
    }
}
