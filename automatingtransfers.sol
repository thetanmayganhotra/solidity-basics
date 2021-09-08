pragma solidity ^0.7.0;


contract mygame{
    
    uint public playercount = 0;
    uint public pot = 0;
    address payable public dealer;
    
    player[] public playersingame;
    
    mapping (address => player) public players;
    
    enum Level {novice, intermediate, advanced}
    
    struct player {
        address payable playeraddress;
        string firstname;
        string lastname;
        Level playerlevel;
        uint createdtime;
    }
    
    constructor(){
        dealer = msg.sender;
    }
    
    
    function addplayer(string memory firstname , string memory lastname) private{
        player memory newplayer = player(msg.sender,firstname , lastname, Level.novice , block.timestamp); 
        players[msg.sender] = player(msg.sender,firstname,lastname,Level.novice,block.timestamp);
        playersingame.push(newplayer);
        
    }
    
    function getplayerlevel(address playeraddress) private view returns(Level){ 
        player storage player1 = players[playeraddress];
        return player1.playerlevel;
    }
    
    function changeplayerlevel(address playeraddress) private {
         player storage player1 = players[playeraddress];
         if (block.timestamp >= player1.createdtime + 20){
             player1.playerlevel = Level.intermediate;
         }
        
    }
    
    function joingame(string memory firstname , string memory lastname) payable public{
        require(msg.value == 25 ether, "papa ko bolo fees dede beta");
        if (dealer.send(msg.value)){
            playercount ++;
            pot += 25;
            addplayer(firstname,lastname);
        }
        
    }
    
    function payout(address loseraddress) payable public{
        require(msg.sender == dealer, "only dealer de skta hai payouts baby");
        require(msg.value == pot*(1 ether));
        uint payoutperwinner = msg.value / (playercount - 1);
        for (uint i=0; i<playersingame.length ; i++){
             address payable currentplayeraddress = playersingame[i].playeraddress;
             if (currentplayeraddress != loseraddress) {
                 currentplayeraddress.transfer(payoutperwinner);
             }
        }
    }
    
}