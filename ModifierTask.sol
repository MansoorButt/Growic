// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.10;

contract ModifierTask {
    address public owner;
    uint private Fee=1;

    error AmountToSmall();

    constructor(){
        owner=payable(msg.sender);
    }

    modifier onlyOwner {
        require(msg.sender==owner,"Only owner can withdraw funds");
        _;
    }

    mapping(address => uint) public balance;

    function deposit(uint amount) public {
        balance[msg.sender] = amount;
    }

    function checkBalance() public view returns (uint) {
        return balance[msg.sender];
    }

    function withDraw(address payable _owner) external onlyOwner{
        _owner.transfer(address(this).balance);
    }
    
    modifier checkBal(address user) {
        require(balance[user]>0,"Kindly Use Deposit function to deposit some funds");
        _;
    }

    modifier checkFee(uint _amount){
        if(_amount<Fee){
            revert AmountToSmall();
            _;
        }
    }

    function addFund(uint _amount) public checkBal(msg.sender){
        balance[msg.sender]+=_amount;
    }

}
