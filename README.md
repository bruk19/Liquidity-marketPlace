# Liquidity Marketplace

> This is a decentralized liquidity marketplace application built with Solidity Ethereum smart contracts. It allows users to manage liquidity, participate in token sales, and track liquidity positions across different networks.

## Contract Overview
The project consists of three main contracts:

- LiquidityMarket: Manages token transfers and holder information
- IcoMarket: Handles the Initial Coin Offering (ICO) process
- Liquidity: Manages liquidity positions across various networks


## Key Features

1. Token Management: Transfer and approve ERC20-like tokens
2. ICO Functionality: Buy tokens during a token sale event
3. Liquidity Position Tracking: Add and view liquidity positions across different networks
4. Ether Transfer: Allow users to transfer Ether to the admin


## Contract Structure
#### Main Components:

##### LiquidityMarket:

- Token balance and allowance management
- Token holder information tracking


##### IcoMarket:

- Token sale functionality
- End sale process


##### Liquidity:

- Liquidity position management
- Ether transfer to admin


## Key Functions::
##### LiquidityMarket:

- transfer(): Transfer tokens between addresses
- approve(): Approve spending allowance for another address
- transferFrom(): Transfer tokens on behalf of another address

##### IcoMarket:

- buyTokens(): Purchase tokens during the ICO
- endSale(): Finish the token sale and transfer remaining tokens and Ether

##### Liquidity:

- AddLiquidity(): Add a new liquidity position
- getAllLiquidity(): Retrieve all liquidity positions for an address
- transferEther(): Send Ether to the admin

## Usage

1. Deploy the LiquidityMarket contract with an initial token supply.
2. Deploy the IcoMarket contract, linking it to the LiquidityMarket contract.
3. Deploy the Liquidity contract.
4. Users can transfer tokens, participate in the ICO, and manage liquidity positions.
5. Admin can end the ICO sale and manage the collected funds.


### Security Considerations:

- Only the admin can perform certain operations like ending the ICO sale.
- The contracts include checks to prevent unauthorized transfers and ensure sufficient balances.
- Ether transfers are protected against zero-amount transfers.

### Development and Testing
To work with this contract:

- Use a Solidity development environment (Hardhat).
- Compile the contracts using Solidity version 0.8.24 or compatible.
- Deploy to a test network before mainnet deployment.
- Thoroughly test all functions, especially token transfers and liquidity management.

## Live Demo ()

[Live Demo Link]()

## Prerequisites

- MetaMask browser extension
- Basic understanding of Ethereum and smart contracts
- Familiarity with ERC20 token standard

## Getting Started
1. Clone the repository:
Copy code `git@github.com:bruk19/Liquidity-marketPlace.git`
cd logistics-supply

2. Install dependencies:
Copy code npm install
# or
yarn install


### Prerequisites
- Have a computer and internet connection
- Have a basic knowledge of Solidity
- Have a basic knowledge of TypeScript
- Have a general understanding of what testing is
- Have visual-studio code or any other code editor installed on your computer.


### 🤝 Contributing
Contributions are welcome! Please feel free to submit a Pull Request.

### License
This project is open-source and available under the MIT License.

### Acknowledgements
- The Ethereum community for providing tools and resources.
- Hardhat communities for the fantastic frameworks.

## Author
👤 **Bruk Teshome**

- GitHub: [@githubhandle](https://github.com/bruk19)
- Twitter: [@twitterhandle](https://twitter.com/Bruktesh)
- LinkedIn: [LinkedIn](https://linkedin.com/in/bruk-teshome)


Feel free to check the [issues page](git@github.com:bruk19/Liquidity-marketPlace.git/issues).

## Show your support

Give a ⭐️ if you like this project!


## 📝 License

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._
