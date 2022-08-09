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

reviewed 2022/03/15

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

### 一个可以创造 city，并为每个 city 增加 goods，并可以返回 city 和 goods 信息的合约。重点是最后的 getCityGoods 方法：返回结构数组，内存数组不能 push 的解决方法 (add,2022/03/16: 代码有错误，方法一有报错，方法二也有错误，需要进行修改，结果为下一段代码。)

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

    // 表示某city的某goodsid是否存在。第一个uint是cityid，第二个是goodsid
    mapping(uint256 => mapping(uint256 => bool)) public goodsWhetherInserted;

    // 将某city的所有goodsid保存到一个数组中
    mapping(uint256 => uint256[]) public ids;

    struct SingleGoods {
        string name;
        uint256 price;
        uint256 quantity;
    }

    function createCity(uint256 _cityID, string memory _cityName) public {
        City storage city = citys[_cityID];
        city.cityID = _cityID;
        city.cityName = _cityName;
    }

    function addGoodsToCity(
        uint256 _cityID,
        uint256 _goodsID,
        string memory _goodsName,
        uint256 _goodsPrice,
        uint256 _goodsQuantity
    ) public {
        City storage city = citys[_cityID];
        SingleGoods storage singleGoods = city.goods[_goodsID];
        singleGoods.name = _goodsName;
        singleGoods.price = _goodsPrice;
        singleGoods.quantity = _goodsQuantity;
        goodsWhetherInserted[_cityID][_goodsID] = true;
        ids[_cityID].push(_goodsID);
    }

    function getCityName(uint256 _cityID)
        public
        view
        returns (uint256 cityID, string memory cityName)
    {
        City storage city = citys[_cityID];
        return (city.cityID, city.cityName);
    }

    function getCityGoods(uint256 _cityID)
        public
        view
        returns (SingleGoods[] memory)
    {
        SingleGoods[] memory allGoods;
        SingleGoods memory singleGoods;
        for (uint256 index = 0; index < ids[_cityID].length; index++) {
            // 以下为错误写法：内存数组不能push
            // singleGoods.name = citys[_cityID].goods[ids[_cityID][index]].name;
            // singleGoods.price = citys[_cityID].goods[ids[_cityID][index]].price;
            // singleGoods.quantity = citys[_cityID]
            //     .goods[ids[_cityID][index]]
            //     .quantity;
            // allGoods.push(singleGoods);

            // 以下为正确写法之一：直接定义，设置元素
            allGoods[index] = SingleGoods(
                citys[_cityID].goods[ids[_cityID][index]].name,
                citys[_cityID].goods[ids[_cityID][index]].price,
                citys[_cityID].goods[ids[_cityID][index]].quantity
            );
        }
        return allGoods;
    }

    //   以下为正确写法之二，先定义一个对应长度的数组，然后设置。比第一个方案复杂，暂未学习
    //     function getCityGoods(uint256 _cityID)
    //     public
    //     view
    //     returns (SingleGoods[] memory)
    // {
    //     SingleGoods[] memory allGoods = new SingleGoods[](ids[_cityID].length);
    //     SingleGoods memory singleGoods;
    //     for (uint256 index = 0; index < ids[_cityID].length; index++) {
    //         singleGoods.name = citys[_cityID].goods[ids[_cityID][index]].name;
    //         singleGoods.price = citys[_cityID].goods[ids[_cityID][index]].price;
    //         singleGoods.quantity = citys[_cityID]
    //             .goods[ids[_cityID][index]]
    //             .quantity;
    //         allGoods[index] = singleGoods;
    //     }
    //     return allGoods;
    // }
}

```

### 对上一段代码的修改，采用方法二，但 SingleGoods memory singleGoods 写入循环内。

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

    // 表示某city的某goodsid是否存在。第一个uint是cityid，第二个是goodsid
    mapping(uint256 => mapping(uint256 => bool)) public goodsWhetherInserted;

    // 将某city的所有goodsid保存到一个数组中
    mapping(uint256 => uint256[]) public ids;

    struct SingleGoods {
        string name;
        uint256 price;
        uint256 quantity;
    }

    function createCity(uint256 _cityID, string memory _cityName) public {
        City storage city = citys[_cityID];
        city.cityID = _cityID;
        city.cityName = _cityName;
    }

    function addGoodsToCity(
        uint256 _cityID,
        uint256 _goodsID,
        string memory _goodsName,
        uint256 _goodsPrice,
        uint256 _goodsQuantity
    ) public {
        City storage city = citys[_cityID];
        SingleGoods storage singleGoods = city.goods[_goodsID];
        singleGoods.name = _goodsName;
        singleGoods.price = _goodsPrice;
        singleGoods.quantity = _goodsQuantity;
        city.goods[_goodsID] = singleGoods;
        goodsWhetherInserted[_cityID][_goodsID] = true;
        ids[_cityID].push(_goodsID);
    }

    function getCityName(uint256 _cityID)
        public
        view
        returns (uint256 cityID, string memory cityName)
    {
        City storage city = citys[_cityID];
        return (city.cityID, city.cityName);
    }

    function getCityGoods(uint256 _cityID)
        public
        view
        returns (SingleGoods[] memory)
    {
        SingleGoods[] memory allGoods = new SingleGoods[](ids[_cityID].length);
        for (uint256 index = 0; index < ids[_cityID].length; index++) {
            SingleGoods memory singleGoods;
            singleGoods.name = citys[_cityID].goods[ids[_cityID][index]].name;
            singleGoods.price = citys[_cityID].goods[ids[_cityID][index]].price;
            singleGoods.quantity = citys[_cityID]
                .goods[ids[_cityID][index]]
                .quantity;
            allGoods[index] = singleGoods;
        }
        return allGoods;
    }

}

```
