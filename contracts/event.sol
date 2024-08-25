// SPDX-License-Identifier: None
pragma solidity ^0.8.3; // pragma solidity ^0.4.17;

contract eventExample {
    // event in solidity is used to log the event
    // event is used to notify the client side
    // event is a event which smart contract push to the client side
    // to notify the client side that something has happened
    event deposit(address indexed _from, uint _amount);

    function depositAmount(uint _amount) external {
        emit deposit(msg.sender, _amount);
    }
}