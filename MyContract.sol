pragma solidity ^0.4.24;

// This smart contract can be viewed public on the blockchain.
contract MyContract {
    string value;

    constructor() public  {
        value = "myValue";
    }

    function get() public view returns(string) {
        return value;
    }

    function set(string _value) public {
        value = _value;
    }
}
