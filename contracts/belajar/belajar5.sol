// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Kontrak {

    // string public nama;

    // constructor(string memory _nama) payable  {
    //     nama = _nama;
    // }

    function cekSaldo() public view returns(uint) {
        return address(this).balance;
    }

    uint public level;
    function levelUp(uint pin) public {
        require(pin == 1234,"pin salah ngentod");
        level++;
    }

    function cekAddres() public view returns(address){
        return msg.sender;
    }

    function topUp() public payable returns(uint) {
        return msg.value;
    }

}