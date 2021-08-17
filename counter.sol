pragma solidity ^0.6.0;

contract Counter {
    //1,2,3......(only positive integers)
    uint public count = 1;
    
    function incrementCount() public {
        count++;
    }
}

