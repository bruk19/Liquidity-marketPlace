// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "./LiquidityMarket.sol";
contract IcoMarket {
  address admin;
  LiquidityMarket public tokenContract;
  uint256 public tokenPrice;
  uint256 public tokenSold;

  event sell(address _buyer, uint256 _amount)

  constructor(LiquidityMarket _tokenContract, uint256 _tokenPrice) {
    admin = msg.sender;
    tokenContract = _tokenContract;
    tokenPrice = _tokenPrice;
  }

  function multiply(uint256 x, uint256 y) internal pure returns(uint256 z) {
    require(y==0 || (z = x *y ) / x == y)
  }
  
  }