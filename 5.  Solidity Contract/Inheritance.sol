pragma solidity ^0.5.4;

// parent class
contract Inheritance{

    string name;

    function setName(string memory _name) public{
        name = _name;
    }
}

// child class Test inheriting from parent class Inheritance
contract Test is Inheritance {

    function getName() public view returns(string memory){
        return name;
    }
}