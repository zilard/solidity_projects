//our goal is to this file build/contracts/Storage.json into the frontend of our DApp  app/ethereum.js

//import the ABI into the frontend of the App

// app/ethereum.js - so this suppose to host the source code of the frontend of your DAppa

// the job of ethereum.js is to import the ABI


// just copy paste these value from the Contract Artifact 
// build/contracts/Storage.json  to here:


fetch('http://localhost:3000/Migrations.json')
  .then(res => {
    return res.text();
  })
  .then(json => {
    var contractArtifact = JSON.parse(json);
    var abi = contractArtifact.abi;
    var deployments = Object.keys(contractArtifact.networks);
    var address = contractArtifact.networks[deployments[deployments.length - 1]].address;
    var web3 = new Web3('http://localhost:9545');
    var contract = new web3.eth.Contract(abi, address);
  });


/*
{
  "contractName": "Migrations",
  "abi": [

...

  "networks": {
    "5777": {
      "events": {},
      "links": {},
      "address": "0x3b61858880012f65ACE6cD73814481D5583Ea4cF",
      "transactionHash": "0xbbd13833ae22d8ebcb0de237dd7212180d854ad32a9e9ce5fb5a37cb29a33f9a"
    }
  },

...

}
*/




/*
var abi = '';
var address = '';


// instantiate web3 here
// url to our Ethereum blockchain
var web3 = new Web3('http://localhost:9545');

// instantiate contract instance
var contract = new web3.eth.Contract(abi, address);
// use `contract` to interact with smart contract

*/



