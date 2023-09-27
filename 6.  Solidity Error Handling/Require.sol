pragma solidity ^0.5.4;

contract Require{

    uint myBalance;

    function addBalance(uint _balance) public view returns(uint){
        // require function doesn't consume gas
        require(_balance > 0, "invalid input balance");
        myBalance = myBalance + _balance;
        return myBalance;
    }
}