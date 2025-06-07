// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2, StdStyle} from "forge-std/Test.sol";
import {ERC20} from "../src/ERC20.sol";

contract BsseSetup is ERC20, Test {
    // test addresses
    address internal alice;
    address internal bob;

    // init ERC20 with name, symbol, and decimals
    constructor() ERC20("name", "SYM", 18) {}

    // Setup function runs before each test
    function setUp() public virtual {
        // create a test address for Alice
        alice = makeAddr("alice");
        // create a test address for Bob
        bob = makeAddr("bob");

        console2.log(StdStyle.blue("When Alice has 200 tokens"));
        _mint(alice, 200e18);
    }
}

contract ERC20TransferSetup is BsseSetup {
    function setUp() public override {
        BsseSetup.setUp();
    }

    // test transferring tokens from Alice to Bob
    function testTranferTokenCorrectly() public {
        // simulate Alice as the msg.sender
        vm.prank(alice);

        // transfer 100 tokens to Bob
        bool success = this.transfer(bob, 100e18);

        // assert that the transfer was successful
        assertTrue(success);

        // assert that Alice's balance is now 100 tokens
        assertEqDecimal(this.balanceOf(alice), 100e18, decimal);

        // assert that Bob's balance is now 100 tokens
        assertEqDecimal(this.balanceOf(bob), 100e18, decimal);
    }
}
