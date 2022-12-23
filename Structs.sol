// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Structs {
   struct User{
    string name;
    uint age;
   }

    User[] public user;

    function setUserDetails(string calldata name, uint256 age) public{
        user.push(User({
            name:name,
            age:age
        }));
    } 

    function getUserDetail(uint id) public view returns(string memory,uint) {
        return (user[id].name,user[id].age);
    }
}