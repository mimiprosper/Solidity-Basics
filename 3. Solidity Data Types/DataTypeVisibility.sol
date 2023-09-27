pragma solidity ^0.5.4;

contract DataTypeVisibility {

    string name; /* visibility is set by default to "internal" and can be accessed outside the smart contract if
                 its the child of the smart contract */

    string public color; // "public": can be accessed outside the smart contract
    string private chairman; // "private": cannot be accessed outside the smart contract

    function setName(string memory _name) public {
        name = _name;
    }

    function setColor(string memory _color) public {
        color = _color;
    }

    function setChairman(string memory _chairman) public {
        chairman = _chairman;
    }

}