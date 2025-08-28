// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionsDemo {
    uint private value;

    // State-changing function
    function setValue(uint _val) public {
        value = _val;
    }

    // View function no gas cost
    function getValue() public view returns (uint) {
        return value;
    }

    // Pure function does not read or modify state
    function multiply(uint a, uint b) public pure returns (uint) {
        return a * b;
    }

    // Payable function (allows sending Ether)
    function deposit() public payable {}

    // Function to check balance of contract
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
