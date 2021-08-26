pragma solidity ^0.6.0;



contract ownable {
    address owner;
    
    constructor() public {
        owner = msg.sender;
    }
    modifier onlyowner(){
        require(msg.sender == owner, "must be owner");
        _;
    }
    
}

contract Secretvault {
    
    string secret;
    
    constructor(string memory _secret) public {
        secret = _secret;
    }
    
    function getsecret() public view returns(string memory){
        return secret;
    }
    
}
contract inheritance is ownable{
    
    
    address secretvault;
    
    constructor(string memory _secret) public {
        Secretvault _secretvault = new Secretvault(_secret);
        secretvault = address(_secretvault);
        super;
    }
    
     
    
    function getsecret() public view onlyowner returns(string memory){
        Secretvault _secretvault = Secretvault(secretvault);
        return _secretvault.getsecret();
    }
    
    
}