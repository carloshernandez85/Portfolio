pragma solidity 0.5.1;

contract voterTest {
    
    struct Voter {
        string name;
        string outlet;
        uint age;
    }
    
    struct Player {
        string name;
        string team;
        uint age;
        bool exist;
    }
    
    modifier onlyOwner() {msg.sender == owner;_;}
    event addedPlayer(uint PlayerId); 
    address owner;
    uint public numPlayers;
    mapping(uint => Voter) voter;
    mapping(uint => Player) player;
    uint numVotes;
    
    
    constructor() public {
      owner = msg.sender;
    }
    
    function addPlayer(string memory name, string memory team, uint age, bool exist) public {
      uint PlayerId = numPlayers++;
      player[PlayerId] = Player(name, team, age, exist);
      emit addedPlayer(PlayerId);
    }
    
    function vote(string memory name, uint playerId, uint age) public {
        if (player[PlayerId].exist == true) {
            uint voterID = numPlayers++; //voterID is the return variable
            voter[PlayerId] = Voter(name,age,PlayerId);
     }    
     }
    
    function totalVotes(string memory playerId) public {
        uint numOfVotes = 0;
        for (uint i = 0; i < numVotes; i++) {
            if (voter[i].PlayerIdIDVote == PlayerID) {
                numVotes++;
    }
    }
        return numVotes;    
    }
     
    function getNumOfCandidates(uint) public view returns(uint) {
        return numVotes;
    }
    
    function getCandidate(uint candidateID) public view returns (uint,bytes32, bytes32) {
        return (candidateID,player[candidateID].name,player[candidateID].team);
    }
    
}