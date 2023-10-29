// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyTokenManager {

    
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
        
        if (userTokenBalances[_user] >= _amount) {
            myTokenTotalSupply -= _amount;
            userTokenBalances[_user] -= _amount;
        }
    }
}