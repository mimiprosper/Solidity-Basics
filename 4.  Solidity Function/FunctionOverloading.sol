pragma solidity ^0.5.4;

contract FunctionOverloading {

    // function overloading has same function name but diff' arguments.
    string name;
    uint8 age;

    function setDetails(string memory _name, uint8 _age){
        name = _name;
        age = _age;
    }

    // function overloading
    function setDetails(string memory _name) public{
        name = _name;
    }

    // function overloading
    function setDetails(string memory _age) public{
        age = _age;
    }
}