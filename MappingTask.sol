// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.10;

contract MappingTask {
    mapping(address => uint) public balance;

    function deposit(uint amount) public {
        balance[msg.sender] = amount;
    }

    function checkBalance() public view returns (uint) {
        return balance[msg.sender];
    }
}
