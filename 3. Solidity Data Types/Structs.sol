pragma solidity ^0.5.4;

contract Struct {

struct students {
    string name;
    uint8 age;
    string studentAddress;
    uint studentPhoneNo;
}

    // create instance of a student
    students courseStudent;

    // function to add student data
    function addStudent(string memory _name, uint8 _age, string memory _studentAddress, uint _studentPhoneNo) public{
        courseStudent.name = _name;
        courseStudent.age = _age;
        courseStudent.studentAddress = _studentAddress;
        courseStudent.studentPhoneNo = _studentPhoneNo;
    }

    // function to get student data
    function getStudent() public view returns(string memory, uint8, string memory, uint) {
        return (courseStudent.name, courseStudent.age, courseStudent.studentAddress, courseStudent.studentPhoneNo);
    }

}