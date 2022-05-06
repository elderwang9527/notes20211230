// 新增某数据到数组或映射,判断其是否重复,数据量庞大的情况下采用遍历的方法太耗时,可以使用此方法

// id存进去，并记录id在数组中的位置，然后新增id时，如果此id在mapping中有对应的位置，就说明此id重复了
// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

contract Market {
    constructor() payable {
        // 数组0的位置填充空结构体
        Block memory blk0 = Block(0, 1, payable(address(0)), 1, "test");
        blocks.push(blk0);
    }

    struct Block {
        uint256 id;
        uint256 colorNum;
        address payable blockOwner;
        uint256 price;
        string words;
    }

    //add,第一个uint是id,第二个uint是此id为第几个增加的.
    mapping(uint256 => uint256) arrayIndex;

    Block[] blocks;

    // 新增block
    function addBlock(uint256 _id) public payable {
        require(0 < _id && _id < 101, "blockID out of range!");
        require(!haveId(_id), "id already exsist!");
        // 给当前新增blk的index设置为blocks.length
        arrayIndex[_id] = blocks.length;

        // Block memory blk = blocks[arrayIndex[_id]];
        // blk.id = _id;
        // blk.colorNum = 1;
        // blk.boardOwner = payable(msg.sender);
        // blk.price = 1;
        // blk.words = "initial words";

        //以上写法编译时不会报错,但部署时会报错.暂不清楚原因.使用以下方法.

        Block memory blk = Block(
            _id,
            1,
            payable(msg.sender),
            1,
            "initial words"
        );

        blocks.push(blk);
    }

    function haveId(uint256 _id) public view returns (bool) {
        return arrayIndex[_id] > 0;
    }
}
