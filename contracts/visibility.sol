// SPDX-License-Identifier: None
pragma solidity ^0.8.3; // pragma solidity ^0.4.17;

contract visibility {
    // with variable, private is the default visibility
    // Deal with blockchain private variable still can be accessed by other contracts, if they know the address
    uint value;

    // strict visibility
    // - private: only accessible in the current contract
    function getPrivateValue() private view returns(uint) {
        return value;
    }

    function setPrivateValue(uint _value) private {
        value = _value;
    }

    // - internal: only accessible in the current contract and contracts that inherit from it
    function getInternalValue() internal view returns(uint) {
        return value;
    }

    function setInternalValue(uint _value) internal {
        value = _value;
    }

    // - external: only accessible from other contracts, can't be called internally
    function getExternalValue() external view returns(uint) {
        return value;
    }

    function setExternalValue(uint _value) external {
        value = _value;
    }

    // - public: accessible from everywhere
    function getPublicValue() public view returns(uint) {
        return value;
    }

    function setPublicValue(uint _value) public {
        value = _value;
    }
}