pragma solidity ^0.5.4;

contract FunctionTypes {

    string name;

    /* function to write the data, name to the blockchain. The input argument specifies that the data is a string,
       the data should be store in the memory... to save gas cost.
    */
    function setName(string memory _name) public {
        name = _name;
    }

    /* function to read data from the blockchain. */
    function getName() public view returns(string memory){
        return name;
    }


}