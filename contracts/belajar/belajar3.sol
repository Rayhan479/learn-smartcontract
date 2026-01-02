// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Belajar3 {

    uint[]  numbers = [1,2,3,4];

    function addNumber(uint _number) public {
        numbers.push(_number);
    }

    function getNumber() public view returns(uint[] memory) {
        return numbers;
    }

    function say(string memory teks) public pure returns(string memory) {
        return teks;
    }

    function say2(string calldata teks) public pure returns(string calldata) {
        return teks;
    }

    function kirimETH() public payable {}

}