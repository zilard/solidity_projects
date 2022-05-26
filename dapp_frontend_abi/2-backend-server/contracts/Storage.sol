pragma solidity ^0.5.0;

contract Storage {
  string private data;

  function set(string calldata _data) external {
    data = _data;
  }


  // public get function accessible outside of the smart contract
  function publicGet() external view returns(string memory) {
    return privateGet();
  }

  // private get function only accessible inside the smart contract
  function privateGet() internal view returns(string memory) {
    return data;
  }

  // in the ABI we will only find the public getter and not the private getter
  // this ABI is intended to be used by consumer outside of the blockchain
}
