// Smart Contract structure is made up of version, name, variable, and function

// version
pragma solidity ^0.5.4;

// name
contract HelloWorld {

    // variable
    string name = "emma";

    // function
    function helloWorld() public view returns(string memory) {
        return name;
    }

}