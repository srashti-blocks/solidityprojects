// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructExamples {
    // Define a struct
    struct Student {
        uint256 id;
        string name;
        uint256 age;
        string course;
    }

    // Store one student
    Student public student1;

    // Store multiple students
    Student[] public students;

    // Mapping from ID to Student
    mapping(uint256 => Student) public studentRecords;

    // Function to set single student
    function setStudent(uint256 _id, string memory _name, uint256 _age, string memory _course) public {
        student1 = Student(_id, _name, _age, _course);
    }

    // Function to add student to array
    function addStudent(uint256 _id, string memory _name, uint256 _age, string memory _course) public {
        students.push(Student(_id, _name, _age, _course));
    }

    // Function to add student to mapping
    function addStudentRecord(uint256 _id, string memory _name, uint256 _age, string memory _course) public {
        studentRecords[_id] = Student(_id, _name, _age, _course);
    }

    // Get student from mapping
    function getStudent(uint256 _id) public view returns (string memory, uint256, string memory) {
        Student memory s = studentRecords[_id];
        return (s.name, s.age, s.course);
    }

    // Update student course in mapping
    function updateCourse(uint256 _id, string memory _newCourse) public {
        studentRecords[_id].course = _newCourse;
    }
}
