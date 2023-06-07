// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract ExampleRevert {
    error ExampleRevert__Error();

    function revertWithError() public pure {
        if (false) {
            revert ExampleRevert__Error();
        }
    }

    function revertWithRequire() public pure {
        require(true, "ExampleRevert__Error");
    }
}
