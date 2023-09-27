pragma solidity ^0.5.4;

contract Address {
    /* address variable: This is of two types - "address" & "address payable". "address payable" come with two functions "checkBalance" & "transfer"

    */

    address personAddress;

    // payable means it get recieve & send ether
    address payable myAddress;

    // check account balance
    function checkBalance() public view returns(uint) {
        return myAddress.balance;
    }

    // make transfer of money
    function transferFunds(uint _funds) public {
        myAddress.transfer(_funds);
    }

    // check smart contract balance
    function checkSmartContractBalance() public view returns(uint) {
        return address(this).balance;
}

    // transfer money from smart contract to my account
    function transferTransferFundsToMyAccount() public {
        myAddress.transfer(address(this).balance);
    }

}