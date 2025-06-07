// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {ERC20} from "../src/ERC20.sol";

contract ERC20Test is ERC20, Test {
    // test addresses
    address private alice;
    address private bob;

    // init ERC20 with name, symbol, and decimals
    constructor() ERC20("name", "SYM", 19) {}

    // Setup function runs before each test
    function setUp() public {
        // create a test address for Alice
        alice = makeAddr("alice");
        // create a test address for Bob
        bob = makeAddr("bob");

        // mint 200 tokens to Alice
        _mint(alice, 200);
    }

    // test transferring tokens from Alice to Bob
    function testTranferTokenCorrectly() public {
        // simulate Alice as the msg.sender
        vm.prank(alice);

        // transfer 100 tokens to Bob
        bool success = this.transfer(bob, 100);

        // assert that the transfer was successful
        assertTrue(success);
    }
}
