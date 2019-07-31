pragma solidity >=0.4.0 <0.6.0;

contract QuickCoin {
    address public minter;

    mapping (address => uint) public balances;

    event Sent(address from, address to, uint amount);

    constructor() public {
        minter = msg.sender;
    }

    function mintTokens(address receiver, uint amount) public {
        require(msg.sender == minter);
        require(amount < 1e35);
        balances[receiver] += amount;
    }

    function sendTokens(address receiver, uint amount) public {
        require(amount <= balances[msg.sender], "NOT UP IN HERE, FUCKFACE");
        

    }







};