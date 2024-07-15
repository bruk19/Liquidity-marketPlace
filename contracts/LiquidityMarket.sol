// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract LiquidityMarketPlace {
  string public name;
  string public symbol; 
  string public standard;
  uint256 public totalSupply;
  address public ownerOfContract;
  uint256 public userId;
  address[] public holderToken;
}