pragma solidity ^0.5.4;

// when using interface dont use contract ie interface Father NOT contract Father
interface Father{

    // interface contract: is a contract where non of its function is implemented. use external for its functions.
    function setName() external;

    function getName() external view returns(string memory);

}


contract Son is Father{

    string name;

    function setName() public{
        name = "mark";
    }

    function getName() public view returns(string memory){
        return name;
    }
}