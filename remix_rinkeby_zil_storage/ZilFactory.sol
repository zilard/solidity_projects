// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./ZilStorage.sol";

contract ZilFactory {

    ZilStorage[] public zilStorageArray;

    function createZilStorageContract() public {
        ZilStorage zilStorage = new ZilStorage();
        zilStorageArray.push(zilStorage);
    }

    // zfStore == zilFactorStorage
    function zfStore(uint256 _zilStorageIndex, uint256 _zilStorageNumber) public {
        // Address of the Contract
        // ABI
        ZilStorage zilStorage = ZilStorage(address(zilStorageArray[_zilStorageIndex]));
        zilStorage.store(_zilStorageNumber);

    }

    function zfGet(uint256 _zilStorageIndex) public view returns(uint256) {
        ZilStorage zilStorage = ZilStorage(address(zilStorageArray[_zilStorageIndex]));
        return zilStorage.retrieve();
    }

}
