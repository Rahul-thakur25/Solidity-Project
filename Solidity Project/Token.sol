// For your assessment, we will create a contract together to fulfill the following requirements:

// Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
// Your contract will have a mapping of addresses to balances (address => uint)
// You will have a mint function that takes two parameters: an address and a value. The function then increases the total supply by that number and increases the balance of the address by that amount.
// Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. It will take an address and value just like the mint functions. It will then deduct the value from the total supply and from the balance of the address.
// Lastly, your burn function should have conditionals to make sure the balance of account is greater than or equal to the amount that is supposed to be burned.
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