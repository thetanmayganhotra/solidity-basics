// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Array {

    bytes3 public b3; //3bytes array
    bytes2 public b2; //2bytes array 
    bytes public b1 = "abc";


    function setter() public{
        b3 = 'abc';
        b2 = 'a';
        }

    function pushelement() public {
        b1.push('d');
    }

    function getelement(uint i) public view returns(bytes1)
    {
        return b1[i];
    }

    function getlength() public view returns(uint)
    {
        return b1.length;
    }

}






