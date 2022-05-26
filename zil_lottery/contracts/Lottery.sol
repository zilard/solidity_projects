// SPDX-License-Identifier: MIT
pragma solidity ^0.6.6;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";


contract Lottey {

    // to keep track of all the players, using array
    address payable[] public players;
    uint256 public usdEntryFee;
    AggregatorV3Interface internal ethUsdPriceFeed;


    constructor(address _priceFeedAddress) public {
        usdEntryFee = 50 * (10**18);
        ethUsdPriceFeed = AggregatorV3Interface(_priceFeedAddress);
    }



    function enter() public payable {

        // to check how much value they are actually sending
 
        // 50 USD minimum
        //require();

        players.push(msg.sender);
        
 
    }


    // https://docs.chain.link/docs/get-the-latest-price/
    // function getLatestPrice()
    function getEntranceFee() public view returns (uint256) {

        (, int256 price, , , , ) = ethUsdPriceFeed.latestRoundData;
        
        uint256 adjustedPrice = uint256(price) * 10**10,  // 18 decimals
        // $50, $2,000 / ETH
        // 50/2,000
        // 50 * 10000 / 2000
        // https://docs.chain.link/docs/ethereum-addresses/

        uint256 costToEnter = (usdEntryFee * 10**18)  / price;
        return costToEnter;

    }




    function startLotter() public {}

    function endLottery() public {}

}
