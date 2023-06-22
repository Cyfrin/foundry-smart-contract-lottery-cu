// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {DeployRaffle} from "../../script/DeployRaffle.s.sol";
import {Raffle} from "../../src/Raffle.sol";
import {Test} from "forge-std/Test.sol";

contract IntegrationsTest is Test {
    function testDeployRaffle() public {
        // Arrange
        DeployRaffle deployer = new DeployRaffle();

        // Act
        (Raffle raffle, ) = deployer.run();

        // Assert
        assert(address(raffle) != address(0));
    }
}
