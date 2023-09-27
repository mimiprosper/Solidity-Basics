pragma solidity ^0.5.4;

contract FunctionStateModifier {
    /* function state modifiers are used to define the state of the function, namely
    1. view
    2. pure
    3. payable
    */

    string name = "success";
    address payable myAddress;

    // view: This is used when you want to read/get data from the blockchain.
    function getName() public view returns(string memory){
        return name;
    }

    // pure: This is the function that doesn't interact with the blockchain
    function getAge() public pure returns(uint){
        return _age;
    }

    // payable: This function is used to receive funds from the smart contract which can be later transferred to your account.
    function receiveFunds(uint _fund) public payable {

    }
}