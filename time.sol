pragma solidity ^0.7.0;


contract mygame{
    
    uint public playercount = 0;
    
    mapping (address => player) public players;
    
    enum Level {novice, intermediate, advanced}
    
    struct player {
        address playeraddress;
        string firstname;
        string lastname;
        Level playerlevel;
        uint createdtime;
    }
    
    
    
    function addplayer(string memory firstname , string memory lastname) public {
        players[msg.sender] = player(msg.sender,firstname,lastname,Level.novice,block.timestamp);
        
        playercount++;
    }
    
    function getplayerlevel(address playeraddress) public view returns(Level){ 
        player storage player1 = players[playeraddress];
        return player1.playerlevel;
    }
    
    function changeplayerlevel(address playeraddress) public {
         player storage player1 = players[playeraddress];
         if (block.timestamp >= player1.createdtime + 20){
             player1.playerlevel = Level.intermediate;
         }
        
    }
    
    
    
}