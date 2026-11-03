# ◈ VoteChain — Decentralized Voting DApp

**VoteChain** is a decentralized voting application built on the Ethereum blockchain. It allows users to connect their MetaMask wallets, cast votes for candidates, and view transparent election results directly from the blockchain.

The application uses Solidity smart contracts to securely record votes and enforce a one-vote-per-wallet restriction.

## 🚀 Features

- **MetaMask Integration:** Connect your Ethereum wallet.
- **Decentralized Voting:** Cast votes through blockchain transactions.
- **One Wallet, One Vote:** Smart contract prevents duplicate voting from the same address.
- **Live Results:** View candidate-wise vote counts and percentages.
- **Transparent Records:** Verify voting transactions using Etherscan.
- **Responsive Interface:** Dark-themed dashboard with candidate cards and election statistics.

## 🛠️ Technology Stack

| Technology | Purpose |
|---|---|
| Solidity | Smart contract development |
| Ethereum Sepolia | Blockchain test network |
| Remix IDE | Contract compilation and deployment |
| HTML5 | Frontend structure |
| CSS3 | User interface and styling |
| JavaScript | Frontend functionality |
| Ethers.js v6 | Blockchain interaction |
| MetaMask | Wallet integration |

## 🏗️ Project Structure

```text
votechain/
├── index.html
├── VoteChain.sol
├── README.md
└── screenshots/
    ├── dashboard.png
    └── results.png
```

## 📜 Smart Contract

The VoteChain smart contract is written in Solidity and deployed on the Ethereum Sepolia test network.

**Network:** Ethereum Sepolia

**Chain ID:** 11155111

**Contract Address:** `0x7bbD86AfC20FE20302258f1649CabB11Dc1d89ed`

**Block Explorer:** [View Contract on Sepolia Etherscan](https://sepolia.etherscan.io/address/0x7bbD86AfC20FE20302258f1649CabB11Dc1d89ed)

### Smart Contract Functions

| Function | Description |
|---|---|
| `vote(uint256)` | Cast a vote for a candidate |
| `getCandidate(uint256)` | Retrieve candidate information |
| `getCandidateCount()` | Retrieve the total number of candidates |
| `getResults()` | Retrieve all candidate vote counts |
| `getVotingStatus(address)` | Check whether a wallet has voted |
| `totalVotes()` | Retrieve the total number of votes |

## ⚙️ Deployment Instructions

### 1. Deploy the Smart Contract

1. Visit [Remix IDE](https://remix.ethereum.org/).
2. Create a file named `VoteChain.sol`.
3. Copy the smart contract source code from this repository.
4. Compile using Solidity compiler version 0.8.20.
5. Connect MetaMask through Injected Provider.
6. Switch MetaMask to Ethereum Sepolia.
7. Deploy the contract.
8. Copy the deployed contract address.

### 2. Configure the Frontend

Open `index.html` and locate:

```javascript
const CONTRACT_ADDRESS = "PASTE_YOUR_CONTRACT_ADDRESS";
```

Replace the placeholder with your deployed smart contract address.

### 3. Run the Frontend

Clone the repository:

```bash
git clone https://github.com/fhsaaan/Blockchain_Dapp.git
```

Navigate to the project directory:

```bash
cd votechain
```

Start a local development server:

```bash
python -m http.server 8000
```

Open the application:

[http://localhost:8000](http://localhost:8000)

### 4. Connect Your Wallet

1. Install MetaMask.
2. Connect your wallet.
3. Select Ethereum Sepolia.
4. Ensure you have Sepolia test ETH.
5. Start voting!

## 🖥️ Screenshots

### VoteChain Dashboard

![VoteChain Dashboard](screenshots/dashboard.png)

### Election Results

![VoteChain Results](screenshots/results.png)

## 🔐 Security and Limitations

- Each wallet address is permitted to vote only once.
- Voting records are stored on the blockchain.
- Votes and wallet addresses are publicly visible.
- The prototype does not implement voter identity verification.
- One-wallet-one-vote does not guarantee one-person-one-vote.
- This application is intended for educational and demonstration purposes, not official elections.

## 🌐 Network Information

- **Blockchain:** Ethereum
- **Network:** Sepolia Testnet
- **Chain ID:** 11155111
- **Currency:** Sepolia ETH
- **Explorer:** [Sepolia Etherscan](https://sepolia.etherscan.io/)

## 📄 License

This project is licensed under the MIT License.

---

**VoteChain — Your Voice. Your Vote.**

Built as an educational Web3 project to demonstrate smart contracts and decentralized blockchain applications.