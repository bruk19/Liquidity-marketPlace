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

  error NotHaveEnoughBalance();
  error NotApprovedValue();

  struct tokenHolderInfo {
    uint256 _tokeId;
    address _from;
    address _to;
    uint256 _totalToken;
    bool _tokenHolder;
  }

  mapping (address => tokenHolderInfo) public tokenHolderInformations;
  mapping (address => uint256) public balanceOf;
  mapping (address => mapping (address => uint256)) public allowance;

  constructor (uint256 _initialSupply) {
    ownerOfContract = msg.sender;
    balanceOf[msg.sender] = _initialSupply;
    totalSupply = _initialSupply;
  }

  function inc() internal {
    userId++;
  }

  function transfer(address _to, uint256 _value) public returns(bool success) {
    if(balanceOf[msg.sender] <= _value) revert NotHaveEnoughBalance();
    inc();

    balanceOf[msg.sender] -=_value;
    balanceOf[_to] +=_value;

    tokenHolderInfo storage tokenInfo = tokenHolderInformations[_to];

    tokenInfo._tokeId = userId;
    tokenInfo._from = msg.sender;
    tokenInfo._to = _to;
    tokenInfo._totalToken =  _value;
    tokenInfo._tokenHolder = true;

    holderToken.push(_to)

    emit transfer(msg.sender, _to, _value);
    return true;
  }
 
 function approve(address _spender, uint256 _value) public returns(bool success) {
  allowance[msg.sender][_spender] = _value;

  emit approval(msg.sender, _spender, _value)
  return true;
 }

 function transferFrom(address _from, address _to, uint256 _value) public returns(bool success) {
  if(_value >= balanceOf[_from]) NotHaveEnoughBalance();
  if((_value >= allowance[_from][msg.sender]) NotApprovedValue();

  balanceOf[_from] -=_value;
  balanceOf[_to] -=_to;
  allowance[_from][msg.sender] -=_value;

  emit transfer(_from, _to, _value)
  return true;
 }

 function getTokenHolderData(address _address) public view returns(uint256, address, address, uint256, bool) {
  return (
    tokenHolderInfo._tokeId;
    tokenHolderInfo._from;
    tokenHolderInfo._to;
    tokenHolderInfo._totalToken
    tokenHolderInfo._tokenHolder
  )
 }
}