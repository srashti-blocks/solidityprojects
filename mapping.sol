// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingsDemo {
    // 1. Basic mapping: balances of users
    mapping(address => uint) public balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint _amount) public {
        require(balances[msg.sender] >= _amount, "Not enough balance");
        balances[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
    }

    // 2. Nested mapping: track votes of users
    mapping(address => mapping(uint => bool)) public hasVoted;

    function vote(uint candidateId) public {
        require(!hasVoted[msg.sender][candidateId], "Already voted for this candidate");
        hasVoted[msg.sender][candidateId] = true;
    }

    // 3. Mapping with structs: store student info
    struct Student {
        string name;
        uint age;
    }
    mapping(uint => Student) public students;

    function addStudent(uint rollNo, string memory name, uint age) public {
        students[rollNo] = Student(name, age);
    }

    function getStudent(uint rollNo) public view returns (string memory, uint) {
        Student memory s = students[rollNo];
        return (s.name, s.age);
    }

    // 4. Mapping for access control
    mapping(address => bool) public isAdmin;

    constructor() {
        isAdmin[msg.sender] = true; // contract creator is admin
    }

    function addAdmin(address _user) public {
        require(isAdmin[msg.sender], "Only admin can add");
        isAdmin[_user] = true;
    }

    function removeAdmin(address _user) public {
        require(isAdmin[msg.sender], "Only admin can remove");
        isAdmin[_user] = false;
    }

    // 5. Mapping to keep track of whitelist
    mapping(address => bool) public whitelist;

    function addToWhitelist(address _user) public {
        require(isAdmin[msg.sender], "Only admin can whitelist");
        whitelist[_user] = true;
    }

    function isWhitelisted(address _user) public view returns (bool) {
        return whitelist[_user];
    }
}
