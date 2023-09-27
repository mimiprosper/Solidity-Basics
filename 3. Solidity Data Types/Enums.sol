pragma solidity ^0.5.4;

contract Enums {
    // enum
    enum carColor {red, white, blue}

    // create an instance
    carColor emmaCarColor;

    function setEmmaCarColor() public {
        emmaCarColor.white;
    }

}