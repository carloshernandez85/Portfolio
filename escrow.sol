pragma solidity ^0.5.1;

contract escrow {
    
    enum State {UNINITIATED, AWAITING_PAYMENT, AWAITING_DELIVERY, COMPLETE}
    State public currentState;
    
    address payable public  buyer;
    address payable public seller;
    uint256  public price;
    
    bool public buyer_in;
    bool public seller_in;
    
    modifier onlyOwner() {
        require(msg.sender == buyer);
        _;
    }
    
    
    constructor(address payable _buyer, address payable _seller, uint _price) public {
        buyer = _buyer;
        seller = _seller;
        price = _price;
    }
    
    function initiateContract() public payable {
        require(msg.value == price);
        if (msg.sender == buyer) {
            buyer_in = true;
        }
        if (msg.sender == seller) {
            seller_in = true;
        }
        if (buyer_in && seller_in) {
            currentState = State.AWAITING_PAYMENT;
        }
        }
    
    function confirmPayment() public payable onlyOwner() {
        require(msg.value == price);
        currentState = State.AWAITING_DELIVERY;
    }
    
    function confirmDelivery() public onlyOwner() {
        seller.transfer(price * 2);
        buyer.transfer(price);
        currentState = State.COMPLETE;
    }
}