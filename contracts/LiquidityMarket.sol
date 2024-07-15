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

  event transfer (address indexed _from, address indexed _to, uint256 _amount);
  event approval (address indexed _owner, address indexed _spender, uint256 _amount);

  struct tokenHolderInfo {
    uint256 _tokeId;
    address _from;
    address _to;
    uint256 _totalToken;
    bool _tokenHolder;
  }
}