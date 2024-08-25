// SPDX-License-Identifier: None
pragma solidity ^0.8.3;

contract functionContructor {
    uint value;

    // constructor
    constructor(uint amount) {
        value = amount;
    }

    function getValue() external view returns(uint) {
        return value;
    }

    function setValue(uint _value) external {
        value = _value;
    }
}
