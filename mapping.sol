pragma solidity ^0.6.0;

contract MyContract {
    //MAPPINGS
    mapping(uint => string) public names;
    mapping(uint => book) public books;
    mapping(address => mapping(uint => book)) public mybooks;
    struct book {
        string title;
        string author;
    }
    
    
    
    constructor() public {
        
        names[1] = "adam";
        names[2] = "tanmay";
        names[3] = "ganhotra";
        names[4] = "raand";
        
    }
    
    function addbook(uint _id, string memory _title, string memory _author) public {
        books[_id]= book(_title, _author);
    }
    
    // nested MAPPINGS
    function addmybook(uint _id, string memory _title, string memory _author) public{
        mybooks[msg.sender][_id] =book(_title,_author);
    }
    
}

