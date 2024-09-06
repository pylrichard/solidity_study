// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Mapping {
    // id映射到地址
    mapping(uint => address) public idToAddress;
    // 币对的映射，地址到地址
    mapping(address => address) public swapPair;
    
    function writeMap(uint _Key, address _Value) public {
        idToAddress[_Key] = _Value;
    }
}