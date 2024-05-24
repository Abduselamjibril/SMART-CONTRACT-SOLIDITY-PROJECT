// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "./Hero.sol";
import "./SuperHeroes.sol";

contract EscrowTest is Test {
    Warrior public warrior;
    Mage public mage;

    function setUp() public {
        warrior = new Warrior();
        mage = new Mage();
    }

    function testWarrior() public {
        assertEq(warrior.health(), 200);
        warrior.takeDamage(10);
        assertEq(warrior.health(), 190);
    }

    function testMage() public {
        assertEq(mage.health(), 50);
        mage.takeDamage(10);
        assertEq(mage.health(), 40);
    }
}