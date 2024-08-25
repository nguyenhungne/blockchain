// SPDX-License-Identifier: None
pragma solidity ^0.8.3; // pragma solidity ^0.4.17;

contract handleError {
    // Example, real

    uint public a = 10;
    address public Admin = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    function runByAdmin() external {
        require(msg.sender == Admin, "You are not admin");
        a = 20;
    }

    modifier onlyAdmin() {
        require(msg.sender == Admin, "You are not admin");
        _;
    }



    // throw, assert, revert => rarely used
    // require => used to check conditions

    // Require example
    function foo() external {
        a = 10;
        // require(condition, "Error message");
        require(a == 10, "a need to be 10");
        /// 50 gas
        /// 100 gas
        /// 150 gas
        /// Error!!!
        /// => still must pay 150 gas
    }

    // if have multiple require, we use modifier
    modifier checkA() {
        require(a == a, "a need to be 10");
        /// 
        /// 

        _;
    }

    modifier checkB() {
        require(a == a, "a need to be 10");
        /// 
        /// 

        _;
    }

    function bar() external checkA checkB {
        a = 10;
    }



    
}