pragma solidity ^0.6.6

contract Lottery{
    address payable[] public players;
    uint256 public usdEntryFee;
    AggregatorV3Interface internal ethUsdPriceFeed;

    constructor(address _priceFeedAddress) public{
        usdEntryFee = 50 * (10**18);
        ethUsdPriceFeed = AggregatorV3Interface(_priceFeedAddress);

    }

    

    function enter() public payable{
        // $50 USD buyin
        players.push(msg.sender);
    }

    function startLottery public view returns(uint256){}

    function endLottery public {}

}