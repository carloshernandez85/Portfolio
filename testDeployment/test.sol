pragma solidity >0.4.0 <0.6.0;

contract Professor {
    
    string firstname;
    string lastname;
    uint collegeid;
    address owner;
    
    event ProfessorEv(
       string firstname,
       string lastname,
       uint collegeid
    );
    
    constructor() public {
    owner = msg.sender;
    }
    
    function setProfessor(string memory _fname,string memory _lname, uint _id) public {
	firstname = _fname;
	lastname = _lname;
	collegeid = _id;
    }
    
    function getInstructor() public view returns (string memory, string memory, uint) {
    return (firstname, lastname, collegeid);
    }
    
    
    //create modifier, modifiers can have arguments such as modifier name(arg1,..)
    //require - if condition is not true, throw an exception
    // if the condition is true, _; on the line beneath is where the function body is placed.
    // In other words, the function will be executed.
    //modifier onlyOwner {
    //	require(msg.sender == owner);
    //	_;
    //}
   
}