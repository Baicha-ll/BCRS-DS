pragma solidity ^0.7.0;
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/math/SafeMath.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/cryptography/Pairing.sol";
contract Example { 
    using SafeMath for uint256;
    using Pairing for *; 
    function checkPairing(uint256 a, uint256 b) public pure returns (bool) { 
     return Pairing.pairingProd4(a, b) == Pairing.pairingProd4(b, a);    }} 