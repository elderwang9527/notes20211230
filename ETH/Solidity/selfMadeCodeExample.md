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

### set 和 get，结构体与映射。struct mapping。与上一个不同是 struct 里有 mapping，需要注意这时 set 就要换种方法

```
// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

contract Market {
    struct City {
        uint256 cityID;
        string cityName;
        mapping(string => uint256) cityGoods;
    }

    mapping(uint256 => City) public citys;

    function setCity(
        uint256 _cityID,
        string memory _cityName,
        string memory _goodsName,
        uint256 _goodsPrice
    ) public {
        City storage city = citys[_cityID];
        city.cityID = _cityID;
        city.cityName = _cityName;
        city.cityGoods[_goodsName] = _goodsPrice;
    }

    function getCity(uint256 _cityID, string memory _goodsName)
        public
        view
        returns (
            string memory cityNamee,
            uint256 cityIDD,
            uint256 pricee
        )
    {
        City storage city = citys[_cityID];
        return (city.cityName, city.cityID, city.cityGoods[_goodsName]);
    }
}

```

### struct 里有子 mapping，子 mapping 里有孙 struct，具体怎么赋值。重点最后五行

```
// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

contract Market {
    struct City {
        uint256 cityID;
        string cityName;
        mapping(uint256 => SingleGoods) goods;
    }
    mapping(uint256 => City) citys;

    struct SingleGoods {
        string name;
        uint256 price;
        uint256 qua;
    }

    function init(
        uint256 _cityID,
        string memory _cityName,
        uint256 _goodsID,
        string memory _goodsName,
        uint256 _goodsPrice,
        uint256 _goodsQua
    ) public {
        City storage city1 = citys[_cityID];
        city1.cityID = _cityID;
        city1.cityName = _cityName;
        SingleGoods storage singleGoods1 = city1.goods[_goodsID];
        singleGoods1.name = _goodsName;
        singleGoods1.price = _goodsPrice;
        singleGoods1.qua = _goodsQua;
        city1.goods[_goodsID] = singleGoods1;
    }
}

```
