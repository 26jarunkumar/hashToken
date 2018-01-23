/*
Interface ERC 20 Token standard: https://github.com/ethereum/EIPs/issues/20
.*/

pragma solidity ^0.4.4;

contract ERC20Token {

	/// Get the total token supply
    /// @return total amount of tokens	
    function totalSupply() constant returns (uint256 supply) {}

	/// Get the account balance of another account with address _owner
    /// @param _owner The address from which the balance will be retrieved
    /// @return The balance
    function balanceOf(address _owner) constant returns (uint256 balance) {}

	/// Send _value amount of tokens to address _to
    /// @notice send `_value` token to `_to` from `msg.sender`
    /// @param _to The address of the recipient
    /// @param _value The amount of token to be transferred
    /// @return Whether the transfer was successful or not
    function transfer(address _to, uint256 _value) returns (bool success) {}

	/// The transferFrom method is used for a withdraw workflow, allowing contracts to send tokens on your behalf
    /// @notice send `_value` token to `_to` from `_from` on the condition it is approved by `_from`
    /// @param _from The address of the sender
    /// @param _to The address of the recipient
    /// @param _value The amount of token to be transferred
    /// @return Whether the transfer was successful or not
    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {}

	/// Allow _spender to withdraw from your account, multiple times, up to the _value amount. If this function is called again it overwrites the current allowance with _value.
    /// @notice `msg.sender` approves `_addr` to spend `_value` tokens
    /// @param _spender The address of the account able to transfer the tokens
    /// @param _value The amount of wei to be approved for transfer
    /// @return Whether the approval was successful or not
    function approve(address _spender, uint256 _value) returns (bool success) {}

	/// Returns the amount which _spender is still allowed to withdraw from _owner
    /// @param _owner The address of the account owning tokens
    /// @param _spender The address of the account able to transfer the tokens
    /// @return Amount of remaining tokens allowed to spent
    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {}

	/// Triggered when tokens are transferred.
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
	
	/// Triggered whenever approve(address _spender, uint256 _value) is called.
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}
