// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract ExampleModulo {
    function getModTen(uint256 number) external pure returns (uint256) {
        // 10 % 10 = 0
        // 10 % 9 = 1 (10 / 9 = 1.??)
        // 2 % 2 = 0. 2 % 3 = 1.   2 % 6 = 0. 2 % 7 = 1
        return number % 10;
    }

    function getModTwo(uint256 number) external pure returns (uint256) {
        return number % 2;
    }
}
