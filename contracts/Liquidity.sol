// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract Liquidity {

  error YourAreNotAdmin();

  address public admin;
  uint256 public liquidityId;

  struct liquidityInfo {
    uint256 id;
    address owner;
    string tokenA;
    string tokenB;
    string tokenA_Address;
    string tokenB_Address;
    string poolAddress;
    string network;
    string transactionHash;
    uint256 timeCreated;
  }

  modifier  onlyAdmin {
    if(admin !== msg.sender) revert YourAreNotAdmin;
  }
}