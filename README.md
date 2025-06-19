# Solidity Storage Contracts Suite

This repository contains three interconnected smart contracts written in Solidity:

- `SimpleStorage.sol`: A basic storage contract to set and retrieve a number.
- `AddFiveStorage.sol`: An extension of `SimpleStorage` that adds 5 to any number stored.
- `StorageFactory.sol`: A factory contract that dynamically deploys instances of `SimpleStorage` and allows interaction with them.

## Table of Contents

- [Overview](#overview)
- [Contracts Description](#contracts-description)
  - [SimpleStorage](#simplestorage)
  - [AddFiveStorage](#addfivestorage)
  - [StorageFactory](#storagefactory)
- [Getting Started](#getting-started)
- [Deployment](#deployment)
- [License](#license)

---

## Overview

This smart contract suite demonstrates Solidity fundamentals such as contract creation, inheritance, dynamic contract deployment, and interaction with deployed contract instances. It is ideal for beginners exploring contract modularity and factory patterns.

---

## Contracts Description

### SimpleStorage

- **Purpose:** Stores a single unsigned integer (`uint256`) and retrieves it.
- **Functions:**
  - `store(uint256 _num)`: Stores `_num`.
  - `retrieve() public view returns (uint256)`: Returns the last stored number.

### AddFiveStorage

- **Purpose:** Inherits `SimpleStorage` but modifies the store functionality to always add `5` to the input before storing.
- **Functions:**
  - `store(uint256 _num) override`: Stores `_num + 5`.

### StorageFactory

- **Purpose:** Deploys multiple instances of `SimpleStorage` and allows interaction with any deployed instance.
- **Key Features:**
  - Factory pattern implementation.
  - Keeps track of all deployed `SimpleStorage` contracts.
  - Enables storing and retrieving values from individual storage contracts by index.
- **Functions:**
  - `createSimpleStorageContract()`: Deploys a new instance and stores its address.
  - `storeValue(uint256 index, uint256 value)`: Stores a value in the specified contract instance.
  - `getValue(uint256 index)`: Retrieves the value from the specified contract instance.

---

## Getting Started

These contracts require:

- Solidity >=0.8.0
- Hardhat or Remix IDE for compilation and deployment
- MetaMask or other Web3 wallets for interaction (if deployed to testnet/mainnet)

---

## Deployment

You can use [Remix IDE](https://remix.ethereum.org) to deploy and test these contracts:

1. Paste each `.sol` file into Remix.
2. Compile all contracts under the appropriate compiler version (e.g., 0.8.x).
3. Deploy `StorageFactory.sol`.
4. Use `createSimpleStorageContract()` to deploy new `SimpleStorage` instances.
5. Use `storeValue()` and `getValue()` for interaction.

Alternatively, set up a Hardhat project and deploy using scripts.

---

## License

This project is open-source and available under the MIT License.
