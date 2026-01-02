// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract belajarMapping {

    mapping (string => uint) public saldo;

    function add(string memory _nama, uint _saldo) public {
        saldo[_nama] = _saldo;
    }

    mapping (string => string[]) public koleksiMainan;
    function addMainan(string memory _nama, string memory _mainan) public {
        koleksiMainan[_nama].push(_mainan);
    }

    function showKoleksi(string memory _nama) public view returns (string[] memory) {
        return koleksiMainan[_nama];
    }

}