pragma solidity ^0.5.1;

contract quickCoding {

string value;

constructor() public {
    value = "Good Friday";
}

function get() public view returns(string memory) {
    return value;
}

function set(string memory _value) public {
    value = _value;
} 
}
// at this point you could ust the above code in remix and see everthing once compiled bc remix is baller
