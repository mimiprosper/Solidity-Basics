pragma solidity ^0.5.4;

contract Events{
    // events: this function gets fired when some conditions are met.

    uint price = 10;

    // create an event
    event priceEvent(bool returnValue);

    // function to call the event
    function checkPrice(uint _inputPrice) public returns(bool){
        if(_inputPrice >= price){
            emit priceEvent(true);
            return true;
        }
    }
}