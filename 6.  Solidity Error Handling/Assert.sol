pragma solidity ^0.5.4;

contract Assert{

    uint myBalance;

    function addBalance(uint _balance) public view returns(uint){
        // assert function would consume gas
        assert(_balance > 0);
        myBalance = myBalance + _balance;
        return myBalance;
    }
}