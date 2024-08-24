// SPDX-License-Identifier: None
pragma solidity ^0.8.3; // pragma solidity ^0.4.17;

contract HelloWorld {
    string public greet = "Hello World!";

    function getGreet() public view returns(string memory) {
        return greet;
    }
}