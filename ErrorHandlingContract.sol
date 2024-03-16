// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingContract {
    uint256 public value;

    // Setter function with require statement
    function setValue(uint256 _value) external {
        require(_value > 0, "Value must be greater than 0");
        value = _value;
    }

    // Getter function
    function getValue() external view returns (uint256) {
        return value;
    }

    // Function to perform assertion
    function performAssertion() external pure {
        uint256 a = 5;
        uint256 b = 10;
        assert(a > b);
    }

    // Function to perform revert
    function performRevert() external pure {
        uint256 a = 5;
        uint256 b = 10;
        if (a < b) {
            revert("A is less than B");
        }
    }
}
