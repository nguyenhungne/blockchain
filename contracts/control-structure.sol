// SPDX-License-Identifier: None
pragma solidity ^0.8.3; // pragma solidity ^0.4.17;

contract ControlStructure {
    bool public isTrue = true;
    
    function doSomeThing() external {
        // conditional
        if (isTrue && false || true) { // operators
            // do something
        } else {
            // do something else
        }

        // loop
        for (uint i = 0; i < 10; i++) {
            // do something
        }

        // while loop
        uint j = 0;
        while (j < 10) {
            // do something
            j++;
        }

        // In blockchain, be careful with loops because of gas limit
    }
}