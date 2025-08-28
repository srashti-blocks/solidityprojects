// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArraysDemo {
    // Fixed-size array
    uint[3] public fixedArray = [1, 2, 3];

    // Dynamic array
    uint[] public dynamicArray;

    // Add element to dynamic array
    function addElement(uint _num) public {
        dynamicArray.push(_num);
    }

    // Remove last element
    function removeLast() public {
        dynamicArray.pop();
    }

    // Get length of dynamic array
    function getLength() public view returns (uint) {
        return dynamicArray.length;
    }

    // Get element at index directly
    function getElement(uint index) public view returns (uint) {
        require(index < dynamicArray.length, "Index out of range");
        return dynamicArray[index];
    }

    //  memory array
    function memoryArray() public pure returns (uint[] memory) {
        uint ;
        temp[0] = 11;
        temp[1] = 22;
        temp[2] = 33;
        return temp;
    }
}
