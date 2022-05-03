// SPDX-License-Identifier: MIT

pragma solidity >=0.6.6 <0.9.0;

contract ZilFunding {

    mapping(address => uint256) public addressToAmountFunded;

    //accept some type of payment
    function fund() public payable {
        addressToAmountFunded[msg.sender] += msg.value;
        // what the ETH -> USD conversion rate is?
        // this is where Oracles come in
        // we need a blockchain oracle

    }

    // 1 Wei = 10**-9 Gwei
    // 1 Wei = 10**-18 Eth

}
