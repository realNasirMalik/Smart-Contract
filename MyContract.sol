// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.9.0;

contract ERC20Token {
    string public name;
    mapping(address => uint256) public balances;

    function mint() public {
        balances[msg.sender]++;
    }
}

// This smart contract can be viewed public on the blockchain.
contract MyContract {
    address payable wallet;
    address public token;

    // Let's you log events.
    event Purchase(
        address indexed _buyer,
        uint256 _amount
    );

    constructor(address payable _wallet, address _token) {
        wallet = _wallet;
        token = _token;
    }

    fallback() external payable {
        buyToken();
    }

    receive() external payable {
        buyToken();
    }

    function buyToken() public payable {
        ERC20Token(address(token)).mint();
        // send ether to the wallet
        wallet.transfer(msg.value);
        emit Purchase(msg.sender, 1);
    }
}
