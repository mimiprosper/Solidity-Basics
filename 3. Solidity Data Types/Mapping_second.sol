pragma solidity ^0.5.4;

contract SecondMapping {

    struct student{
        string name;
        uint8 age;
    }

    mapping(uint => student) courseStudents;

    // function to add data
    function addStudent(uint _key, string memory _name, uint8 age) public {
        courseStudents[_key].name;
        courseStudents[_key].age;
    }

    // function to get data
    function getStudent(uint _key) public view returns(string memory, uint8){
        return(courseStudents[_key].name, courseStudents[_key].age);
    }
}