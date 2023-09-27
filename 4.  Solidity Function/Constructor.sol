pragma solidity ^0.5.4;

contract Constructor {

    /* constructor function is that function called when ever you deploy your smart contract,
       it initializes the variables */

    // variables
    string  name;
    uint8 age;

    // initialise the variables
    constructor(string memory _name, uint8 _age) public {
        name = _name;
        age = _age;
    }
}