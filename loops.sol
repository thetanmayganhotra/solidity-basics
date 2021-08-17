pragma solidity ^0.6.0;

contract MyContract {
    //conditionals
    
    uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];
    
    address public owner;
    
    constructor() public{
        owner = msg.sender;
    }
    function countevennumber() public view returns(uint){
        uint count = 0;
    
    for(uint i=0;i<numbers.length;i++)
    {
      if(iseven(numbers[i]))
      {
          count++;
      }
      else 
      {
          continue;   
      }
    }
    return count;
    }
    function iseven(uint _number) public view returns(bool) {
        if(_number%2 == 0)
        {
            
            return true;
        }
        else {
            return false;
        }
    }
        
        function isowner() public view returns(bool) {
            if (msg.sender == owner){
                return true;
            
            }
            else{
                return false;
            }
        }
    }
    



