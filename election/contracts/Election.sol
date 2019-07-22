pragma solidity ^0.5.8;

contract Election {

    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    uint public candidatesCount;
    mapping(uint => Candidate) public candidates;
    
    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint _candidateId) public {
        
    }


}

