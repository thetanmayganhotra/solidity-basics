pragma solidity ^0.8.3;

//fallback and receive functions gets called when the main function doesnt exist inside the contract they allow the contract to still take payments
//receive gets called when the data sent is empty 
//fallback gets called when data sent is not empty
//fallback function gets called if data sent is empty but receive doesnt exist
contract Fallback {


    event Log(string func, address sender, uint value , bytes data);

    fallback() external payable {

        emit Log("fallback" , msg.sender, msg.value ,  msg.data);
    }
        
    receive() external payable {
     emit Log("receive" , msg.sender, msg.value ,"");
    }


}