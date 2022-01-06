pragma solidity ^0.8.0;
// SPDX-License-Identifier: SimPL-2.0

contract HelloWorld{
    string name = "peilin";
    function getName() public view returns(string memory){
        return name;
    }
}