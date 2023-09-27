// Smart Contract structure is made up of solidity version, contract name, variable, and function

// solidity version
pragma solidity ^0.5.4;

// contract name
contract HelloWorld {

    // variable
    string greetings = "Hello World";

    // function
    function helloWorld() public view returns(string memory) {
        return greetings;
    }

}