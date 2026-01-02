// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;



interface IKontrakA {
    function getNumber() external view returns(uint);
    function setNumber(uint _number) external ;
} 

contract KontrakB {
    address private addrKontrakA = 0x7C4e30a43ecC4d3231b5B07ed082329020D141F3;

    function readNumber() public view returns(uint) {
        IKontrakA kontrakA = IKontrakA(addrKontrakA);
        return kontrakA.getNumber();
    }

    function updateNumber(uint _newNumber) public {
        IKontrakA kontrakA = IKontrakA(addrKontrakA);
        kontrakA.setNumber(_newNumber);
    }


}