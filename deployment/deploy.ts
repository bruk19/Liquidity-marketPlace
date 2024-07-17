import {ethers} from "hardhat"

const tokens = (nToken: string | number) => {
  return ethers.parseUnits(nToken.toString(), "ethers")
}

async function main() {
  const _initialSupply = tokens(50000000000)
  const LiquidityMarket = await ethers.getContractFactory("LiquidityMarket");
  const liquidityMarket = await LiquidityMarket.deploy(_initialSupply)

  console.log("LiquidityMarket Contract deployed to:", liquidityMarket.target)

  //Ico Market
  const _tokenPrice = tokens(0.0001)
  const IcoMarket = await ethers.getContractFactory("IcoMarket");
  const icoMarket = await IcoMarket.deploy(_tokenPrice)

  console.log("IcoMarket Contract deploye to", icoMarket.target);

  //Iquidity
  const Liquidity = await ethers.getContractFactory("Liquidity");
  const liquidity = await Liquidity.deploy()

  console.log("Liquidity contract deployed to", liquidity.target)
}

main()
.then(() => process.exit(0))
.catch((error) => {
  console.error(error);
  process.exit(1);
});