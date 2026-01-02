// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract KontrakA {
    uint number = 100;

    function getNumber() public view returns(uint) {
        return number;
    }

    function setNumber(uint _number) public {
        number = _number;
    }
}