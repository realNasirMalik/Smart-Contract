// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.9.0;

import "./Math.sol";

contract MyContract {
    uint256 public value;

    function calculate(uint _value1, uint _value2) public {
        Math.divide(_value1, _value2);
        value = _value1 / _value2;
    }
}
