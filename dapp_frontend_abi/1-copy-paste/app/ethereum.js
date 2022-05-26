//our goal is to this file build/contracts/Storage.json into the frontend of our DApp  app/ethereum.js

//import the ABI into the frontend of the App

// app/ethereum.js - so this suppose to host the source code of the frontend of your DAppa

// the job of ethereum.js is to import the ABI


// just copy paste these value from the Contract Artifact 
// build/contracts/Storage.json  to here:

var abi = [
    {
      "constant": false,
      "inputs": [
        {
          "name": "_data",
          "type": "string"
        }
      ],
      "name": "set",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "publicGet",
      "outputs": [
        {
          "name": "",
          "type": "string"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    }
];


var address = '0x3b61858880012f65ACE6cD73814481D5583Ea4cF';


// instantiate web3 here
// url to our Ethereum blockchain
var web3 = new Web3('http://localhost:9545');

// instantiate contract instance
var contract = new web3.eth.Contract(abi, address);
// use `contract` to interact with smart contract





