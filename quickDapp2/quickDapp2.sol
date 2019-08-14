pragma solidity 0.5.10;

contract QuickDapp2 {
    int256 balance;
    
constructor() public {
        balance = 1;
    }
function getBalance() view public returns(int256) {
        return balance;
    }
function withdraw(int256 amt) public {
        balance = balance - amt;
    }
    function deposit(int256 amt) public {
        balance = balance + amt;
    }
}