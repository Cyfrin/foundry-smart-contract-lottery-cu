// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract ExampleModulo {
    function getModTen(uint256 number) external pure returns (uint256) {
        // 10 % 10 = 0
        // 10 % 9 = 1 (10 / 9 = 1.??)
        // 2 % 2 = 0. 3 % 2 = 1.   6 % 2 = 0. 7 % 2 = 1
        return number % 10;
    }

    function getModTwo(uint256 number) external pure returns (uint256) {
        return number % 2;
    }
}
