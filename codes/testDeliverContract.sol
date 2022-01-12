// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Deliver {
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function getAddressBalance(address _address) public view returns (uint256) {
        return _address.balance;
    }
}
