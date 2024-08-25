// SPDX-License-Identifier: None
pragma solidity ^0.8.3; // pragma solidity ^0.4.17;

contract storageArray {
    // Storage array
    // memmory array
    // array as parameter

    // [1, 2, 3, 4, 5] // fixed length array
    // ["apple", "banana"] // dynamic length array
    // [1,"apple", true] // mixed array, invalid in solidity

    // Storage array
    uint[] public numbers = [1, 2, 3, 4, 5]; // CRUD, Create, Read, Update, Delete

    function doSomeThing() external {
        numbers.push(6);
        numbers[0] = 10;
        numbers.pop();

        delete numbers[0]; // reset to default value of uint

        // loop through array
        for (uint i = 0; i < numbers.length; i++) {
            numbers[i];
        }



    }
    // Memory array: store data in memory, must be deleted after function execution
    // Declaring length of memory array is not allowed
    function bar() external {
        uint[] memory numbers = new uint[](10);
        // Dont have push method
        numbers[0] = 10;
        numbers[1] = 20;

        // delete numbers;
        delete numbers[0];
    }

    function foo(uint[] calldata myArrays) external {
        
    }

    // external: use calldata
    // internal: use memmory

    // **Note:
    // Storage array is saved in blockchain
    // Memory array is not saved in blockchain cause it is temporary in function
}