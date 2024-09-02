// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract ValueTypes {
    // 布尔值
    bool public _bool = true;
    // 布尔运算
    bool public _bool1 = !_bool;
    bool public _bool2 = _bool && _bool1;
    bool public _bool3 = _bool || _bool1;
    bool public _bool4 = _bool == _bool1;
    bool public _bool5 = _bool != _bool1;

    // 整数
    int public _int = -1;
    uint public _uint = 1;
    uint256 public _number = 20220330;
    // 整数运算
    uint256 public _number1 = _number + 1;
    uint256 public _number2 = 2**2;
    uint256 public _number3 = 7 % 2;
    bool public _numberbool = _number2 > _number3;

    // 地址
    address public _address = 0x7A58c0Be72BE218B41C608b7Fe7C5bB630736C71;
    address payable public _address1 = payable(_address);
    // 地址类型的成员
    uint256 public balance = _address1.balance;

    // 固定长度的字节数组
    // bytes32: 0x4d696e69536f6c69646974790000000000000000000000000000000000000000
    bytes32 public _byte32 = "MiniSolidity";
    // bytes1: 0x4d
    bytes1 public _byte = _byte32[0];

    // Enum
    enum ActionSet { Buy, Hold, Sell }
    ActionSet action = ActionSet.Buy;

    // enum可以和uint显式转换
    function enumToUint() external view returns(uint) {
        return uint(action);
    }
}