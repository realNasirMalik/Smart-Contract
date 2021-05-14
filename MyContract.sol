// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.9.0;

// This smart contract can be viewed public on the blockchain.
contract MyContract {
    mapping(address => uint256) public balances;
    address payable wallet;

    constructor(address payable _wallet) {
        wallet = _wallet;
    }

    function buyToken() public payable {
        // buy a Token
        balances[msg.sender] += 1;
        // send ether to the wallet
        wallet.transfer(msg.value);
    }
}
