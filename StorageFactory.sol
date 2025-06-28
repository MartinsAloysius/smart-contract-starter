// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {SimpleStorage} from "./SimpleStorage.sol";
import {AddFiveStorage} from "./AddFiveStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;
    AddFiveStorage[] public listOfAddFiveStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorageContractVariable = new SimpleStorage();
        listOfSimpleStorageContracts.push(simpleStorageContractVariable);
    }

    function sStore(
        uint256 _simpleStorageIndex,
        uint256 _simpleStorageNumber
    ) public {
        listOfSimpleStorageContracts[_simpleStorageIndex].store(
            _simpleStorageNumber
        );
    }

    function sGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }

    function createAddFiveStorageContract() public {
        AddFiveStorage addFiveStorageContractVariable = new AddFiveStorage();
        listOfAddFiveStorageContracts.push(addFiveStorageContractVariable);
    }

    function afStore(
        uint256 _addFiveStorageIndex,
        uint256 _addFiveStorageNumber
    ) public {
        listOfAddFiveStorageContracts[_addFiveStorageIndex].store(
            _addFiveStorageNumber
        );
    }

    function afGet(uint256 _addFiveStorageIndex) public view returns (uint256) {
        return listOfAddFiveStorageContracts[_addFiveStorageIndex].retrieve();
    }
}
