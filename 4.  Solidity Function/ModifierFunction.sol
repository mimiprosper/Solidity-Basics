pragma solidity ^0.5.4;

contract ModifierFunction {
    // modifiers: this helps you restrict access to functions

    address admin; // owner of the smart contract
    string name;

    // initialise the variable, owner of the smart contract
    constructor(){
        admin = msg.sender; // global variable... name of the person deploying the smart contract
    }

    // execution modifier name, onlyAdmin
    modifier onlyAdmin{
        require(msg.sender == admin);
    }

    // this function can ONLY be used by the onlyAdmin
    function setName(string memory _name) public onlyAdmin{
        name = _name;
    }

}