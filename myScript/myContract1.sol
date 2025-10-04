// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract OverloadedEventEmitter {

    event Log(address indexed sender, bytes data);

    function record() external {
        emit Log(msg.sender, bytes("HELLO,WORLD"));
    }

    function record(bytes calldata _data) external {
        if (_data.length == 0) {
            emit Log(msg.sender, bytes("HELLO,WORLD"));
        } else {
            emit Log(msg.sender, _data);
        }
    }
}