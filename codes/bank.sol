// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Bank {
    mapping(address => uint256) public accounts;

    modifier hasFunds(uint256 _amount) {
        require(
            _amount <= accounts[msg.sender],
            "Does not own sufficient funds."
        );
        _;
    }

    function deposit() public payable {
        accounts[msg.sender] += msg.value;
    }
    //注意remix里deposit右边没有存入多少数额的选项，需要在deposit上方value处输入。

    function withdraw(uint256 _amount) public hasFunds(_amount) {
        payable(msg.sender).transfer(_amount);
    }

    function checkAssets() public view returns (uint256) {
        return address(this).balance;
    }
}
