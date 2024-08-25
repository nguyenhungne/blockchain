// SPDX-License-Identifier: None
pragma solidity ^0.8.3; // pragma solidity ^0.4.17;

// use import to import the contract from another file
contract Hello {
    uint public a = 10;

    function foo() public {
        a = 20;
    }
}

contract Boujour {
    address AHello;

    function setAHello(address _AHello) external {
        AHello = _AHello;
    }

    function callFoo() external {
        Hello hello = Hello(AHello);
        hello.foo();
    }
}

interface IHelloTest {
    function foo() external;
}

contract HelloTest {
    uint public a = 10;

    function foo() public {
        a = 20;
    }
}


