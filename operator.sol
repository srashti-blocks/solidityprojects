// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OperatorsDemo {
    uint public a = 10;
    uint public b = 3;

    // Arithmetic Operators
    function arithmetic() public view returns (uint, uint, uint, uint, uint) {
        return (a + b, a - b, a * b, a / b, a % b);
    }

    // Comparison Operators
    function comparison() public view returns (bool, bool, bool, bool, bool, bool) {
        return (a == b, a != b, a > b, a < b, a >= b, a <= b);
    }

    // Logical Operators
    function logical() public view returns (bool, bool, bool) {
        bool x = true;
        bool y = false;
        return (x && y, x || y, !x);
    }

    // Assignment Operators
    function assignment() public view returns (uint, uint, uint) {
        uint temp = a;
        temp += b; // temp = 13
        uint temp2 = a;
        temp2 *= b; // temp2 = 30
        return (temp, temp2, a); // note: state 'a' unchanged
    }

    // Bitwise Operators
    function bitwise() public view returns (uint, uint, uint, uint, uint, uint) {
        return (a & b, a | b, a ^ b, ~a, a << 1, a >> 1);
    }
}
