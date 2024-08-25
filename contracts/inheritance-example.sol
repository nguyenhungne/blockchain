// SPDX-License-Identifier: None
pragma solidity ^0.8.3;

import "./function-contructor.sol";

contract inheritanceExample is functionContructor {
    
    // Constructor in child contract calling parent constructor
    constructor() functionContructor(100) {}
}
