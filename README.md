
# VoteChain

A decentralized voting application built on Ethereum.

VoteChain allows users to connect their crypto wallets,
cast votes for candidates, and view transparent election
results directly from the blockchain.

## Features

- MetaMask wallet integration
- Decentralized voting
- One vote per wallet address
- Blockchain-based vote recording
- Live voting statistics
- Candidate-wise vote distribution
- Ethereum Sepolia integration

## Technology Stack

- Solidity 0.8.20
- Ethereum Sepolia
- Remix IDE
- HTML5
- CSS3
- JavaScript
- Ethers.js v6
- MetaMask

## Smart Contract

Network: Ethereum Sepolia

Contract Address:
YOUR_CONTRACT_ADDRESS

Explorer:
https://sepolia.etherscan.io/address/YOUR_CONTRACT_ADDRESS

## Deployment Instructions

1. Open Remix IDE.
2. Create VoteChain.sol.
3. Paste the smart contract source.
4. Compile using Solidity 0.8.20.
5. Connect MetaMask to Ethereum Sepolia.
6. Deploy the contract.
7. Copy the deployed contract address.

## Frontend Setup

Clone the repository:

git clone YOUR_REPOSITORY_URL

Navigate into the project:

cd votechain

Update CONTRACT_ADDRESS in index.html.

Run the application:

python -m http.server 8000

Open http://localhost:8000

Connect MetaMask using Ethereum Sepolia.

## Screenshots

### VoteChain Dashboard

![VoteChain Dashboard](screenshots/dashboard.png)

### Election Results

![Election Results](screenshots/results.png)

## How It Works

1. Users connect their MetaMask wallet.
2. The frontend retrieves candidates and voting data.
3. Users select a candidate.
4. MetaMask signs and submits the transaction.
5. The smart contract validates the voter.
6. The vote is permanently recorded on-chain.
7. Updated election results are retrieved from Ethereum.

## Network Details

Network: Ethereum Sepolia
Chain ID: 11155111
Currency: Sepolia ETH

## Limitations

This is an educational prototype. It does not
provide voter identity verification, ballot secrecy,
or protection against multiple wallets controlled
by the same person.

## License

MIT
