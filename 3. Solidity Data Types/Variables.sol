pragma solidity ^0.5.4;

contract Variables {
    /*
    Variable Types

	1. State variable
	2. Local variable
	3. Global variable
		block.difficulty (uint): current block difficulty
		block.gaslimit (uint): current block gaslimit
		block.number (uint): current block number
		block.timestamp (uint): current block timestamp as seconds
		gasleft() returns (uint256): remaining gas
		msg.data (bytes calldata): complete calldata
		msg.sender (address payable): sender of the message (current call)
		msg.sig (bytes4): first four bytes of the calldata
		msg.value (uint): number of wei sent with the message
		now (uint): current block timestamp (alias for block.timestamp)
		tx.gasprice (uint): gas price of the transaction
		tx.origin (address payable): sender of the transaction (full call chain)
    */

    string studentName; // state variable. This is stored to the blockchain
    function setName(string memory _name) public{

        uint a = 1; // local variable. This are defined within the scope of the function
        uint b = 2; // local variable. This are defined within the scope of the function

        studentName = _name;

        block.number; // global variable
        tx.origin; // global variable
    }
}