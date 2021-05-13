// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.9.0;

// This smart contract can be viewed public on the blockchain.
contract MyContract {
    string value;

    constructor() {
        value = "myValue";
    }

    function get() public view returns(string memory) {
        return value;
    }

    function set(string memory _value) public {
        value = _value;
    }
}
