pragma solidity ^0.5.4;

contract ControlStatement {

    uint price = 10;
    string public message;

    function checkPricer(uint _price) public view returns(bool){
        if(_price >= price){
            message = "input price greater than current price";
            return true;
        }
        else{
            message = "input price less than current price";
            return false;
        }
    }

    function priceCheck(uint _price) public view returns(bool){
        while(_price >= price){
            message = "input price greater than current price";
            return true;
        }
    }

    // ternary operator
    function checkPrice(uint price) public view returns(bool){

        // if input price (_price) is greater than or equals to current price (price) isTrue = true else isTrue = false
        bool isTrue = (_price >= price) ? true: false;
        return isTrue;
    }

    function updatePrice(uint _increment) public returns(uint){
        for(uint i = 0; i < 5; i++)
        price = price + _increment;
        return price;
    }

}