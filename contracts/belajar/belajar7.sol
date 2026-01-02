// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract simpleWallet {

    address private owner;

    constructor() {
        owner = msg.sender;
    }

    mapping(address => uint) private balances;

    event Deposit(address indexed user, uint amount);
    event Transfer(address indexed  from, address indexed to, uint amount);
    event Withdraw(address indexed user, uint amount);

    function _deposit() private {
        require(msg.value > 0, "Jumlah Depo Harus Lebih Dari 0");
        balances[msg.sender] += msg.value;
        emit Deposit(msg.sender, msg.value);
    }

    function deposit() external payable {
        _deposit();
    }

    receive() external payable {
        _deposit();
     }

    fallback() external payable { 
        _deposit();
    }

    function getBalance(address user) external view returns(uint) {
        return balances[user];
    }
    function getMyBalance() external view returns(uint) {
        return balances[msg.sender];
    }

    function transfer(address to, uint amount) external  {
        require(balances[msg.sender] >= amount, "saldo tidak cukup");
        require(to != address(0), "address zero");
        balances[msg.sender] -= amount;
        balances[to] += amount;
        emit Transfer(msg.sender, to, amount);
    }

    function withdraw(uint amount) external {
        require(amount > 0, "Penarikan tidak bisa 0");
        require(balances[msg.sender] >= amount, "Saldo tidak cukup");

        balances[msg.sender] -= amount;
        (bool succes,) = msg.sender.call{value: amount}("");
        require(succes, "transfer gagal");
    }
    

}