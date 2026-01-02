// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleModifier {
    address public owner;
    uint256 public number = 10;

    event UpdateNumber(uint256 newNumber);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Sia lain owner blog");
        _;
    }

    function ubahNumber(uint256 _newNumber) public onlyOwner {
        number = _newNumber;
        emit UpdateNumber(_newNumber);
    }
}