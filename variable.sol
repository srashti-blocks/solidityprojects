// SPDX-Lincense-Identifier: MIT
pragma solidity ^0.8.0;
contract VariablesDemo {
    // state variables stored permanantly on blockchain.
     uint256 public myuint=100;
     string public myString = "string"
     address public myAddress;

     //constructor sets owner address.
     constructor() {
            myaddress = msg.sender;
     }

    //local variable (exists temorily)
    function localVaribleDemo() public pure returns (uint256) {
       uint256 temp = 35; // local varible
       return temp;
    }
   // using global variable
    function globalvaribleDemo() public view returns (address , uint256) {
           return (msg.sender , block.timestamp)}
}
