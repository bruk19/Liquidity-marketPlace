// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract Liquidity {

  error YourAreNotAdmin();
  error CanotSendZeroAmount();

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
  mapping(address => liquidityInfo[]) public liquidities;

  modifier onlyAdmin {
    if(admin != msg.sender) revert YourAreNotAdmin();
    _;
  }

  constructor() {
    admin = msg.sender;
  } 

  function AddLiquidity(
    string memory _tokenA,
    string memory _tokenB,
    string memory _tokenA_Address,
    string memory _tokenB_Address,
    string memory _poolAddress,
    string memory _network,
    string memory _transactionHash
  ) external {
    liquidityId++;
    uint256 currentLiquidityId = liquidityId;

    liquidities[msg.sender].push(liquidityInfo({
      id: currentLiquidityId,
      owner: msg.sender,
      tokenA: _tokenA,
      tokenB: _tokenB,
      tokenA_Address: _tokenA_Address,
      tokenB_Address: _tokenB_Address,
      poolAddress: _poolAddress,
      network: _network,
      transactionHash: _transactionHash,
      timeCreated: block.timestamp
    }));
  }

  function getAllLiquidity(address _address) public view returns(liquidityInfo[] memory) {
    return liquidities[_address];
  }

  function transferEther() external payable {
    if(msg.value <= 0) revert CanotSendZeroAmount();

    (bool success, ) = admin.call{value: msg.value}("");
    require(success, "Transfer failed");
  }
}