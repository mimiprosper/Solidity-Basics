pragma solidity ^0.5.4;

contract Mapping {

    /* mapping is simply key value pair ie
       1 ---> "success"
       2 ---> "wealth"
       3 ---> "iceman"
     */

    mapping (uint => string) courseStudents;

    // add student data
    function addStudent(uint _key, string memory _name) public {
        courseStudents[_key] = _name;
    }

    // get student data
    function getStudent(uint _key) public view returns(string memory) {
        return courseStudents[_key];
    }

}