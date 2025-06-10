# Foundry ERC20

This project demonstrates an ERC20 token implementation and test suite using [Foundry](https://book.getfoundry.sh/), a fast, modular toolkit for Ethereum application development.

## Features

- Custom ERC20 contract in Solidity
- Comprehensive tests using Forge
- Deployment scripts for Sepolia and other EVM-compatible networks
- Example configuration for environment variables and network endpoints

## Deployed Contract

- [ERC20 on Sepolia Etherscan](https://sepolia.etherscan.io/address/0xd5826ae31e2db51b9bcf9ca9cf478618b697e817)

## Getting Started

### Prerequisites

- [Foundry](https://book.getfoundry.sh/getting-started/installation) installed (`forge`, `anvil`)
- Node.js (optional, for managing `.env` files)
- An Infura/Alchemy RPC URL and funded testnet wallet for deployment

### Installation

Clone the repo and install dependencies:

```sh
git clone https://github.com/YourmixJNR/foundry-erc20.git
cd foundry-erc20
forge install
```

### Environment Setup

Create a `.env` file in the root directory:

```env
SEPOLIA_RPC_URL=https://sepolia.infura.io/v3/<your_infura_project_id>
PRIVATE_KEY=0x<your_private_key>
ETHERSCAN_API_KEY=<your_etherscan_api_key>
```

### Build

```sh
forge build
```

### Test

```sh
forge test
```

### Deploy

Update your `.env` and `foundry.toml` with the correct RPC URLs and keys.

To deploy to Sepolia (or another network configured in `foundry.toml`):

```sh
forge script script/ERC20.s.sol:ERC20Script --rpc-url sepolia --broadcast --verify
```

### Project Structure

- `src/ERC20.sol` - ERC20 contract implementation
- `test/ERC20.t.sol` - Test suite for the ERC20 contract
- `script/ERC20.s.sol` - Deployment script
- `foundry.toml` - Foundry configuration
- `.env` - Environment variables (not committed)

### Useful Commands

- Format code: `forge fmt`
- Run local node: `anvil`
- Interact with contracts: `cast <subcommand>`

## Resources

- [Foundry Book](https://book.getfoundry.sh/)
- [Etherscan API Keys](https://etherscan.io/myapikey)
- [Infura](https://infura.io/) / [Alchemy](https://alchemy.com/)
