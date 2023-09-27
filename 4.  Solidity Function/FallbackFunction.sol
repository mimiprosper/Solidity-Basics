pragma solidity ^0.5.4;

contract FallbackFunction{

    /* fallback function: is a function without any name, arguments, without return type. this function are marked
    external function ie can only be called from an external contract. its also marked payable */

    //fallback function
    function() external payable{ }

    // check account balance, FallbackFunction smart contract
    function getBalance() public view returns(){
        return address(this).balance;
    }
}


contract Test{

    // send money to FallbackFunction smart contract
    function sendMoney(FallbackFunction fb) public{
        address(fb).transfer(2 ether);
    }
}