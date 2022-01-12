pragma solidity ^0.4.24;

contract InfoContract {
    string Name;
    uint256 age;

    function setInfo(string _name, uint256 _age) public {
        name = _name;
        age = _age;
    }

    function getInfo() public view returns (string, uint256) {
        return (name, age);
    }
}
