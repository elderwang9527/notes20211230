pragma solidity ^0.8.0;

contract InfoContract {
    
   string name;
   uint age;
   
                    function setInfo(string memory _name, uint _age) public {
       name = _name;
       age = _age;
   }
   
   function getInfo() public view returns ( string memory, uint) {
       return (name, age);
   }   
}