// SPDX-License-Identifier: None
pragma solidity ^0.8.3; // pragma solidity ^0.4.17;

contract sendReceiveEthereum {
    

    function sendEthereum(address payable to, uint amount) external {
        to.transfer(amount); // send ether to address
    }

    function buySth() external payable {
        // msg.value: amount of ether
        // msg.sender: address of the sender
        address(this).balance; // transfer ether to this contract
    }

    // If a contract receives ether, it has to have a fallback function
    receive() external payable {
        // fallback function
    }
}