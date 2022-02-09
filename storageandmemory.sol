pragma solidity ^0.8.0;

contract demo {
    string[] public student = ['ravi','rita','aman'];

    function mem() public {
        string[] memory s1 = student;
        s1[0] = 'Akash';

    }

    function sto() public {
        string[] storage s1 = student;
        s1[0] = 'Akash';   
         }

    }