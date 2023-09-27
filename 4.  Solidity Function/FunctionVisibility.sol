pragma solidity ^0.5.4;

contract FunctionVisibility {

    string name;

    // public: this means the function can be accessed outside from outside the smart contract
    function setName(string memory _name) public{
        name = _name;
    }

    // internal: works same like public
    function getName() internal view returns(string memory) {
        return name;
    }

    // private: this means that this function can only be accessed within the smart contract
    function getName_1() private view returns(string memory){
        return name;
    }

    //external: this means that function can only be called from an external the smart contract
    function getName_2() external view returns(string memory) {
        return name;
    }

}

// Test is a child of FunctionVisibility
contract Test is FunctionVisibility {

    function fetchName() public view returns(string memory) {
       return getName(); // this will work
       return getName_1(); // this will NOT work
       return getName_2(); // this can only be called from an external smart contract. Eg smart contract Test_2 below
    }
}

// making use of the external function
contract Test_2 {

    // instance of smart contract FunctionVisibility
    FunctionVisibility fv = new FunctionVisibility();

    function fetchName() public view returns(string memory) {
        return fv.getName_2();
    }

}