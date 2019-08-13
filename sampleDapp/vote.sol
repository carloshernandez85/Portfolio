pragma solidity >0.4.0 <0.6.0;

contract MemberLookUp {
    uint age;
    string name;
    
    
    function setMember(uint _age, string memory _name) public {
        age = _age;
        name = _name;
        
    }
    
    function getMember() public view returns(uint, string memory) {
        return(age, name);
    }
}