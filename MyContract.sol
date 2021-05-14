// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.9.0;

// This smart contract can be viewed public on the blockchain.
contract MyContract {
    // enum is a class
    enum State {Waiting, Ready, Active} // 0, 1, 2
    State public state; // gives a public access

    constructor() {
        state = State.Ready;
    }

    function activate() public {
        state = State.Active;
    }

    function isActive() public view returns(bool) {
        return state == State.Active;
    }
}
