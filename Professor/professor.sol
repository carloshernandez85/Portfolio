pragma solidity >=0.4.0 <0.6.0;

contract professor {
    
    string firstname;
    string lastname;
    uint collegeid;
    address owner;
    
    
    constructor() public {
        owner == msg.sender;
    }
    
    function setProfessor(string memory _fname, string memory _lname, uint _id) public {
        firstname = _fname;
        lastname = _lname;
        collegeid = _id;
    }
    
    function getProfessor() public view returns(string memory, string memory, uint) {
        return(firstname, lastname, collegeid);
    }
}