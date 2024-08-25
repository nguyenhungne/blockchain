// SPDX-License-Identifier: None
pragma solidity ^0.8.3; // pragma solidity ^0.4.17;

contract variable {
    // fixed-size types
        bool isEnable = true; // or false
        uint age = 30; // uint is an alias for uint256, example: 1, 2, 3, 4, ..., 100
        address owner = 0x1234567890123456789012345678901234567890; // address is a 20 byte value, example: 0x1234567890123456789012345678901234567890
        bytes32 data; // bytes32 is fixed-size byte array, example: 0x1234567890123456789012345678901234567890123456789012345678901234

    // variable-size types
        string name; // string is a UTF-8 string, example: "Hello, World!"
        bytes dynamicData;
        uint[] numbers; // array of unsigned integers, example: [1, 2, 3, 4, ..., 100]
        mapping(uint => string) users; // key-value store, example: users[0] = "Alice", users[1] = "Bob", users[2] = "Charlie"

    // user-defined types
        struct User {
            uint id;
            string name;
            uint[] friendIds;
            bool isSingle;
        }

        enum Color {
            RED,
            GREEN,
            BLUE
        }

    // built-in types
        msg.sender; // address of the sender
        msg.value; // amount of ether sent with the message

}