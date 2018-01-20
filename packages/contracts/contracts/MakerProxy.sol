pragma solidity ^0.4.11;

/// @title MakerProxy 
/// @author Antonio Juliano - <antonio.m.juliano@gmail.com>, Yehonathan Svechinsky <svechinskyy@gmail.com> 
interface MakerProxy {
    /// @dev Validates that the order signer is valid.
    /// @param orderAddresses Array of order's maker, taker, makerToken, takerToken, feeRecipient and signer.
    /// @param orderValues Array of order's makerTokenAmount, takerTokenAmount, makerFee, takerFee, expirationTimestampInSec, and salt.
    /// @return _isValid is signer a valid signer on behalf of the contract.
    function verifyOrder(
         address[6] orderAddresses,
         uint[6] orderValues
         // Signature unnecessary as it is checked by exchange contract
    ) returns (bool _isValid);
}