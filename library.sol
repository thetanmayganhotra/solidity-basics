//SPDX-License-Identifier: UNLICENSED


//library allows you to seperate and reuse code , it also allows you to enhance data types
pragma solidity ^0.8.3;


library Math {

    function max(uint x, uint y ) internal pure returns(uint){
        return x>=y ? x : y;

    }
}


contract Test {

    function testMax(uint x, uint y) external pure returns (uint) {
        return Math.max(x,y);
    }
}



library Array {

    function find(uint i , uint[] storage arr) internal view returns(uint) {
        uint index;
        for(int j = 0 ; j < arr.length ; j++)
        {
            if (arr[j] == i) 
            {   index = j ;
                break;
            }
        }

        return index;
    }
}
contract TestArray {

    using ArrayLib for uint[]; // this statement applies all the functions of this library to the the data type

    uint[] public arr = [3,2,1];

    function testFind() external view returns (uint i) {
        return arr.find(i);

    }
}






