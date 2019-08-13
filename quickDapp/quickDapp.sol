pragma solidity >=0.4.0 <0.6.0;

contract QuickDapp {
    string public candidateName;

    constructor() public {
        candidateName = "candidate 1";
    }
    
    function setCandidate(string memory _name) public {
        candidateName = _name;
    }
}