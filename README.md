# MetaProject
This is an introductory Solidity Smart Contract designed to illustrate the fundamental concepts of Solidity. It features three state variables: myTokenName, myTokenSymbol and myTokenTotalSupply. Additionally, it employs a mapping (Address => uint) called " userTokenBalances" to associate addresses with their respective token balances. The contract includes two functions: "issueTokens" and "destroyTokens," which perform the actions implied by their names. issueTokens increases the total token supply as well as the balance of the address that triggers the function with a specified value. The destroyTokens function checks whether the caller has enough tokens and, if so, reduces the token balance of the caller and the total supply.

# Getting Started:

To execute this program, you can use Remix, an online Solidity Integrated Development Environment (IDE). Follow these steps:

Visit https://remix.ethereum.org/.
Create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension, for example, "Test.sol."
Copy and paste the provided code into the file.
Contract Code:
```
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyTokenManager {

    // Public variables for the token's name, symbol, and total supply
    string public myTokenName = "MyToken";
    string public myTokenSymbol = "MTK";
    uint public myTokenTotalSupply = 0;

    // Mapping to track account balances
    mapping(address => uint) public userTokenBalances;

    // Mint function to increase the total supply and user's balance
    function issueTokens(address _user, uint _amount) public {
        myTokenTotalSupply += _amount;
        userTokenBalances[_user] += _amount;
    }

    // Burn function to decrease total supply and user's balance
    function destroyTokens(address _user, uint _amount) public {
        // Checks if the user has enough tokens to burn
        if (userTokenBalances[_user] >= _amount) {
            myTokenTotalSupply -= _amount;
            userTokenBalances[_user] -= _amount;
        }
    }
}
```
To compile the code, go to the "Solidity Compiler" tab in the left-hand sidebar, and ensure the "Compiler" option is set to "0.8.18" (or another compatible version). Click the "Compile Metagg.sol" button.

After compilation, you can deploy the contract by going to the "Deploy & Run Transactions" tab in the sidebar, selecting the "MyTokenManager" contract from the dropdown menu, and clicking the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the "issueTokens" or "destroyTokens" functions through the Remix interface. Make sure the compiler option is set to 0.8.18 to avoid version dependency errors.

# Author:

Abhay

# License:

This project is licensed under the MIT License. For more details, refer to the LICENSE.md file.


