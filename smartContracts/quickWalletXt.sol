pragma solidity ^0.5.0;
contract MyContract {

    mapping(address => uint256) public balances;
    address payable wallet;
    
    constructor(address payable _wallet) public payable {
        wallet = _wallet;
    }
    
    
    function buyToken() public payable {
        balances[msg.sender] ++;
        wallet.transfer(msg.value);
        
    }
}