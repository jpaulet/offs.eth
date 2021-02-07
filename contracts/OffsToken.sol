// SPDX-License-Identifier: MIT
pragma solidity ^0.7.5;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// ----------------------------------------------------------------------------
// 'OFFS' 'OffsToken' token contract
//
// Symbol      : OFFS
// Name        : OffsToken
// Total supply: 100000000 (100M)
// Decimals    : 18
//
// (c) by J.P. Aulet (@jp_aulet) 2020. The MIT Licence.
// ----------------------------------------------------------------------------

contract OffsToken is ERC20 {
    constructor(
        string memory name,
        string memory symbol,
        uint256 initialSupply
    ) public ERC20(name, symbol) {
        _mint(msg.sender, initialSupply);   
    }
}