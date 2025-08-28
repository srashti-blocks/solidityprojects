// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ControlStatementsDemo {
    // Example of if / else
    function checkNumber(uint _num) public pure returns (string memory) {
        if (_num > 10) {
            return "Greater than 10";
        } else if (_num == 10) {
            return "Equal to 10";
        } else {
            return "Less than 10";
        }
    }

  
    function sum(uint n) public pure returns (uint) {
        uint total = 0;
        for (uint i = 1; i <= n; i++) {
            total += i;
        }
        return total;
    }

    
    function factorial(uint n) public pure returns (uint) {
        uint result = 1;
        while (n > 0) {
            result *= n;
            n--;
        }
        return result;
    }

    
    function findFirstEven(uint[] memory nums) public pure returns (uint) {
        for (uint i = 0; i < nums.length; i++) {
            if (nums[i] % 2 == 0) {
                return nums[i]; // break loop after first even found
            } else {
                continue; // skip odd numbers
            }
        }
        return 0; // if no even found
    }
}
