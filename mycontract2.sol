pragma solidity ^0.6.0;

contract MyContract{
    
    //array 
    uint[] public uintarray = [1,2,3];
    string[] public stringarray = ["apple","banana","carrot"];
    string[] public values;
    uint[][] public array2D = [[1,2,3],[4,5,6]];
    
    function addvalue(string memory _value) public {
        values.push(_value);
    }
    
    function valuecount() public view returns(uint){
        return values.length;
    }
}