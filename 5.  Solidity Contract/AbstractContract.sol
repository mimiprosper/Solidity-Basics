pragma solidity ^0.5.4;

contract AbstractContract{
    // abstract contract: is a contract in which one of its function is not implemented in the contract.

    string name;

    // abstract contract function
    function setName() public;

    function getName() public view returns(string memory){
        return name;
    }
}

contract Test is AbstractContract{

    // implementing an abstract class function
    function setName() public{
        name = "mark";
    }
}


// higer version pragma solidity ^0.6.0;

/*
abstract contract AbstractContract{
    // abstract contract: is a contract in which its function is not implemented in the contract.

    string name;

    // abstract contract function
    function setName() public virtual;

    function getName() public view returns(string memory){
        return name;
    }
}

contract Test is AbstractContract{

    // implementing an abstract class function
    function setName() public override{
        name = "mark";
    }
}
*/