// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringsDemo {
    string public myString = "i am a girl";

    //  update the string
    function setString(string calldata _newString) public {
        myString = _newString;
    }

    //  get  the length  of string
    function getLength() public view returns (uint) {
        return bytes(myString).length;
    }

    //  concatenate strings
    function concatenate(string calldata _a, string calldata _b) public pure returns (string memory) {
        return string(abi.encodePacked(_a, _b));
    }

    // compare two strings
    function compare(string calldata _a, string calldata _b) public pure returns (bool) {
        return keccak256(abi.encodePacked(_a)) == keccak256(abi.encodePacked(_b));
    }
}
