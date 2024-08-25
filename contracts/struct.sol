// SPDX-License-Identifier: None
pragma solidity ^0.8.3; // pragma solidity ^0.4.17;

contract StructExample {
    struct Player {
        uint id;
        address account;
        string name;
        uint score;
    }

    Player[] players;

    function foo() external {
        Player memory player1 = Player(1, msg.sender, "Alice", 100);
        Player memory player2 = Player(2, 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, "Bob", 200);

        players.push(player1);
        players.push(player2);
    }

    // Note: 
    // - memory: temporary data storage, not saved in blockchain
    // - calldata: use for external function
}