pragma solidity ^0.6.0;

contract MyContract {
    // state varaiables
    string public mystring = "hello world"; 
    bytes32 public mybytes32 = "hello, world";
    int public myint = 1;
    uint public myUint = 1;
    uint256 public myunit256 = 1;
    uint8 public myunit8 = 1;
    
    address public myaddress = 0x05dda1a7F09D01dEdD2CCF2D2713C71c67215d5D;
    
    struct MyStruct {
        uint myunit;
        string mystring;
        
    }
    
    MyStruct public mystruct = MyStruct(1,"hello,World");
    
    
    // local varaiables
    function getValue() public pure returns(uint){
        uint value = 1;
        return value;
        
    }
    
}