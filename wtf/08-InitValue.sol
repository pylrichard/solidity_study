// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract InitValue {
    // Value Types
    // false
    bool public _bool1;
    // ""
    string public _string;
    int public _int;
    uint public _uint;
    // 0x0000000000000000000000000000000000000000
    address public _address;

    enum ActionSet { Buy, Hold, Sell }
    // 第一个元素0
    ActionSet public _enum;

    function fi() internal{}
    function fe() external{}

    // Reference Types
    uint[8] public _staticArray;
    uint[] public _dynamicArray;
    mapping(uint => address) public _mapping;
    struct Student {
        uint256 id;
        uint256 score; 
    }
    Student public student;

    // delete操作符
    bool public _bool2 = true;
    function d() external {
        // delete会让_bool2变为默认值false
        delete _bool2;
    }
}