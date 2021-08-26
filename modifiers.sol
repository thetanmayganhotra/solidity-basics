pragma solidity >=0.7.0 <0.9.0;

contract coin1{
    address public minter;
    
    mapping(address => uint) public balances;
    
    event send(address from,address to,uint amount);
    
    modifier mustbeminter {
        require(msg.sender == minter, "must be minter");
        _;
    }
    
    modifier amountgreaterthan(uint amount){
         require(amount < 1e60);
         _;
    }
    
    modifier sufficientbalance(uint amount){
        require(amount <= balances[msg.sender], "insufficient balance");
        
        _;
        
    }
    
    constructor(){
        minter = msg.sender;
    }
    
    function mint(address receiver,uint amount) public mustbeminter amountgreaterthan(amount){
        
       
        balances[receiver] += amount;
    }
    
    function sending(address receiver1,uint amount1) public sufficientbalance(amount1){
        
        balances[receiver1] += amount1;
        balances[msg.sender] -= amount1;
        emit send(msg.sender,receiver1,amount1);
    }
    
    
    
}