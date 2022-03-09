# 此文件用于保存学习 solidity 中自己编写的代码

### set 和 get，结构体与映射。struct mapping

```
contract Market {
    struct City {
        uint256 _id;
        string _name;
        string _goods1;
        string _goods2;
        string _goods3;
    }

    mapping(uint256 => City) public perCity;

    function setCity(
        string memory name,
        string memory goods1,
        string memory goods2,
        string memory goods3,
        uint256 id
    ) public {
        perCity[id] = City({
            _id: id,
            _name: name,
            _goods1: goods1,
            _goods2: goods2,
            _goods3: goods3
        });
    }

    function getCity(uint256 id)
        public
        view
        returns (
            string memory name,
            string memory goods1,
            string memory goods2,
            string memory goods3
        )
    {
        City memory city = perCity[id];
        return (city._name, city._goods1, city._goods2, city._goods3);
    }
}
```
