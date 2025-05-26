# 🧠 Ethernaut CTF Solutions

Welcome to my collection of solutions for [Ethernaut](https://ethernaut.openzeppelin.com/), OpenZeppelin's Web3 wargame focused on Ethereum smart contract security. This repository contains detailed writeups, exploit scripts, and educational content for each challenge level.

## 🎯 What is Ethernaut?

Ethernaut is an interactive Web3 security challenge platform where players exploit vulnerable smart contracts to learn about common Solidity pitfalls and security best practices. Each level presents a different vulnerability class, from basic access control issues to advanced cryptographic attacks.

## 🛠️ Tech Stack

- **Foundry** - Modern Ethereum development framework
- **Solidity** - Smart contract programming language  
- **Alchemy** - Ethereum node provider for testnet interactions
- **Sepolia Testnet** - Ethereum test network for live deployments

## 📚 Challenge Solutions

| Level | Challenge | Status | Vulnerability Type | Solution |
|-------|-----------|--------|-------------------|----------|
| 01 | [Fallback](./01-Fallback/) | ✅ | Access Control | [Solution](./01-Fallback/README.md) |
| 02 | [Fallout](./02-Fallout/) | ✅ | Constructor Bug | [Solution](./02-Fallout/README.md) |
| 03 | [Coin Flip](./03-CoinFlip/) | ✅ | Weak Randomness | [Solution](./03-CoinFlip/README.md) |
| 04 | [Telephone](./04-Telephone/) | ✅ | tx.origin vs msg.sender | [Solution](./04-Telephone/README.md) |
| 05 | [Token](./05-Token/) | ✅ | Integer Overflow | [Solution](./05-Token/README.md) |
| 06 | [Delegation](./06-Delegation/) | ✅ | Delegatecall | [Solution](./06-Delegation/README.md) |
| 07 | [Force](./07-Force/) | ✅ | Forced Ether | [Solution](./07-Force/README.md) |
| 08 | [Vault](./08-Vault/) | ✅ | Storage Visibility | [Solution](./08-Vault/README.md) |
| 09 | [King](./09-King/) | ✅ | DoS Attack | [Solution](./09-King/README.md) |
| 10 | [Re-entrancy](./10-Reentrancy/) | ✅ | Reentrancy | [Solution](./10-Reentrancy/README.md) |
| 11 | [Elevator](./11-Elevator/) | 🔄 | Interface Manipulation | Work in Progress |
| 12 | [Privacy](./12-Privacy/) | 📋 | Storage Layout | Planned |

*Legend: ✅ Complete | 🔄 In Progress | 📋 Planned*

## 🚀 Getting Started

### Prerequisites

- [Foundry](https://book.getfoundry.sh/getting-started/installation) installed
- [Node.js](https://nodejs.org/) for additional tooling
- An [Alchemy](https://alchemy.com/) account for RPC access
- Sepolia ETH from a [faucet](https://sepoliafaucet.com/)

### Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/ethernaut-ctf-solutions.git
   cd ethernaut-ctf-solutions
   ```

2. **Install dependencies**
   ```bash
   forge install
   ```

3. **Configure environment**
   ```bash
   cp .env.example .env
   # Edit .env with your private key and RPC URL
   ```

4. **Run a solution**
   ```bash
   cd 01-Fallback
   forge script script/FallbackSolution.s.sol --rpc-url $SEPOLIA_RPC_URL --broadcast
   ```

Each challenge folder contains:
- **Contract source code** - The vulnerable smart contract
- **Exploit scripts** - Foundry scripts to exploit the vulnerability
- **Unit tests** - Test cases demonstrating the exploit
- **Detailed writeup** - Step-by-step explanation and security lessons

## 🔒 Security Lessons Learned

This repository serves as an educational resource covering critical smart contract security concepts:

- **Access Control** - Proper ownership and permission management
- **Arithmetic Safety** - Integer overflow/underflow prevention
- **Randomness** - Secure random number generation on-chain
- **Reentrancy** - Protection against recursive call attacks
- **Gas Optimization** - Efficient contract design patterns
- **Storage Privacy** - Understanding blockchain storage visibility
- **Delegatecall Risks** - Safe proxy pattern implementation

## 🤝 Contributing

Found a bug or have a better solution? Contributions are welcome!

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-solution`)
3. Commit your changes (`git commit -m 'Add amazing solution'`)
4. Push to the branch (`git push origin feature/amazing-solution`)
5. Open a Pull Request

## ⚠️ Disclaimer

This repository is for **educational purposes only**. The techniques demonstrated here should only be used on:
- Test networks (Sepolia, Goerli, etc.)
- Your own contracts
- Authorized security research

**Never use these techniques on mainnet contracts you don't own.**

## 📚 Additional Resources

- [Ethernaut Official Game](https://ethernaut.openzeppelin.com/)
- [OpenZeppelin Security Guidelines](https://docs.openzeppelin.com/contracts/4.x/security)
- [Foundry Book](https://book.getfoundry.sh/)
- [Solidity Security Considerations](https://docs.soliditylang.org/en/latest/security-considerations.html)
- [Smart Contract Security Best Practices](https://consensys.github.io/smart-contract-best-practices/)

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- OpenZeppelin team for creating Ethernaut
- Foundry team for the amazing development framework
- The Ethereum security research community

---

**Happy Hacking! 🚀**

*Remember: The best defense is understanding the attack.*
