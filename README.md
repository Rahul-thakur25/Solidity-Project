# Token Contract

This Solidity code explains how the contract allows the creation (minting) and destruction (burning) of tokens and it keeps the track of the total supply and individual balances, with a safety condition to prevent burning more tokens than are available in an address's balance.

## Description

This program is a Token contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. This code contains a mapping of address and balances and mint Token function, Burn token function and total supply fuction. Mint token and burn token function takes two parameters ammount and adrress which increases,decreases the total supply and function respectively.

## Getting Started
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
### Executing program

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Token{

    // Public variables to store token details
    string public name = "ETH coin";
    string public constant symbol = "ETHK_coin";
    uint256 public totalSupply;

    mapping(address => uint256) balances;

    function mintTokens(address Address, uint256 amount) public {
        totalSupply += amount;
        balances[Address] += amount;
    }

    function burnTokens(address account, uint256 amount) public {
        require(balances[account] >= amount, "BEP20: burn amount exceeds balance");
        totalSupply -= amount;
        balances[account] -= amount;
    }
  
    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }
}

```

Set the token name to "ETH coin". Set the token symbol to "ETHK_coin". Initialize the total token supply to 0. Create a mapping to store token balances for each address. Mint Tokens:

Input: address Address, uint256 amount. Increase totalSupply by amount. Increase balances[Address] by amount. Burn Tokens:

Input: address account, uint256 amount. Ensure balances[account] is at least amount. Decrease totalSupply by amount. Decrease balances[account] by amount. Check Balance:

Input: address account. Output: Return balances[account]. This brief algorithm outlines the main functionalities of the MyToken contract.

## Authors

Rahul Thakur 
Email ID:- rajput1148g@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
