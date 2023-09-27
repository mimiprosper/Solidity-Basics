pragma solidity ^0.5.4;

contract Array {

    // Fixed length Arrays: Means that you have specific length of the arrays
    string[10] studentName;

    function setData(uint _index, string memory _name) {
        string[_index] = _name;
    }

    function getData(uint _index) public view returns(string memory) {
        return studentName[_index];
    }

    // Dynamic Arrays: This means that you can not specify the length of the arrays
    string[] courseStudents;

    function addStudents(string memory _name) public {
        courseStudents.push(_name);
    }

    function getStudent(uint _index) public view returns(string memory) {
        return courseStudents[_index];
    }
}