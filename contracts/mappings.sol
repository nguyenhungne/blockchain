// SPDX-License-Identifier: None
pragma solidity ^0.8.3; // pragma solidity ^0.4.17;

contract Mappings {
    // {
    //     s: 1,
    //     b: 2,
    //     a: 3
    // }

    // declare mapping
    mapping(address => uint) balances;
    // nested mapping
    mapping(address => mapping(address => bool)) approved; // acceppted other address to use my address

    function foo() external {
        // add & update
        balances[msg.sender] = 100;
        balances[msg.sender] = 200;

        delete balances[msg.sender];

        // default value:
        // int: 0
        balances[msg.sender]; // 0 (default value of uint)


        // nested mapping
        address spender = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        approved[msg.sender][spender] = true; // => true or false
    }
}