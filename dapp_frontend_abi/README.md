# Import contract ABI & Address to Dapp frontend

* what is the ABI?
* how to produce ABI of solidity smart contracts?

How to import ABI to frontend?

* Copy paste
* Serve ABI as static file in backend server
* Package ABI in frontend with webpack

* how to reduce the size of the ABI in frontend?
* pros / cons of different methods for importing ABI to frontend

# Contract ABI Specification

https://solidity.readthedocs.io/en/develop/abi-spec.html

how to produce the ABI of the solidity smart contract

solc --abi



truffle compile
truffle migrate

ls build/contracts/
Migrations.json Storage.json

we are interested in the ABI of the smart contract
and the address


========================================================


* how to produce ABI of a solidity smart contract

the solidity compiler is able to produce the ABI of the solidity smart contract

solc --abi   <--- to produce the ABI of the smart contract

most people use truffle, the framework for solidity smart contract

everytime you compile the smart contract it also produces the ABI of the smart contract

truffle compile

truffle migrate

in both cases it's going to produce the ABI in the build directory

ls build/contracts/
Migrations.json Storage.json

then you will find what is a contract artifact, a concept that belongs to truffle
and inside this contract artifact you will find the ABI

in the contract artifact we are going to find the ABI
build/contracts/Storage.json

besides the ABI it also has other stuff for example the contract name
or bytecode, sourceMap, 


we are now only interested in the ABI of the contract and also in the address


========================================================


How to import ABI to frontend?


the first way is the very simple copy and paste











