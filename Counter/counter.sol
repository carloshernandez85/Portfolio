pragma solidity >0.4.0 <0.6.0;

contract Counter {
    address owner;
    int256 counter;

    constructor() public {
        owner = msg.sender;
        counter = 0;
    }
    function incrementCounter() public {
        counter++;
    }
    function decrementCounter() public {
        counter--;
    }
    function resetCounter() public {
        require(owner == msg.sender, "Not up in here!");
        counter = 0;
        }
    function getCounter() public view returns(int256) {
        return counter;
    }
}