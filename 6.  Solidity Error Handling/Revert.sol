pragma solidity ^0.5.4;

contract Revert{

    uint myBalance;

    function addBalance(uint _balance) public returns(uint){
        if(_balance < 1){
            revert("Invalid input value");
        }
            myBalance = myBalance + _balance;
            return myBalance;
    }
}