// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.9.0;

// This smart contract can be viewed public on the blockchain.
contract MyContract {
    string public value;

    constructor() {
        value = "myValue";
    }

    function set(string memory _value) public {
        value = _value;
    }
}
