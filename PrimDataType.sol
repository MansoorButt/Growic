// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract PrimDataType {
    string name = "Mansoor-Butt";
    uint256 unSignedNum = 23;
    int signedNum = -23;
    bool valid = true;
    address _owner = 0x72deC9120Ee1be4F16e782dFad643C057DE57C40;
     enum Stages {
        Started,
        inProgress,
        Finished
    }
    bytes32 data = 0x0000000000;


}