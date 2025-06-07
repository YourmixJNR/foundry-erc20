// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {ERC20} from "../src/ERC20.sol";

contract ERC20Test is ERC20, Test {
    address private alice;
    address private bob;
    constructor() ERC20("name", "SYM", 19) {}

    function setUp() public {
        alice = makeAddr("alice");
        bob = makeAddr("bob");

        _mint(alice, 200);
    }

    function testTranferTokenCorrectly() public {
        vm.prank(alice);
        this.transfer(bob, 100);
    }
}
