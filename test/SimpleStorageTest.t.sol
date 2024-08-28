// SPDX-License-Identifier: MIT
// 1. Pragma
pragma solidity ^0.8.24;
// 2. Imports

import {Test, console} from "forge-std/Test.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage simpleStorage;

    function setUp() external {
        simpleStorage = new SimpleStorage();
    }

    function testInitialStoregNumberIsZero() public view {
        assertEq(simpleStorage.retrieve(), 0);
    }
}
