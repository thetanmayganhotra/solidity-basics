//contracts with partial function definitions
// you need a child contract to utilize the functions defined


pragma solidity ^0.4.0;

// contract Feline {

//     function utterance() public returns (bytes32) ;
// }

// contract Cat is Feline {
//     function utterance() public returns (bytes32) {
//         return "miaow";
//     }
// }

contract abstractDemo {
    function setvalue(uint _a) public ;
    function getvalue() public view returns(uint); 
}

contract abstractInherit is abstractDemo {
    uint a ;

    function setvalue(uint _a) public {
        a = _a;
    }

    function getvalue() public view returns(uint) {
        return a;
    }
}

contract call {
    abstractInherit obj =new abstractInherit();

    function callme() public returns(uint) {
        obj.setvalue(20);
        return obj.getvalue();
    }
}