pragma solidity 0.4.24;
contract RealEstate {
    address public seller;
    address public buyer;
    string public streetAddress;
    string title;
    uint256 public price;
    
    
    constructor  () {
        //who is the seller?
        seller = msg.sender;
        //what is the street address
        streetAddress = " new york, ny";
        //what is the title
        title = "dddd";
        //what is the price?
        price = 99000000000000000000; // 99 Eths

    }
    function buyHouse() payable public {
        require(seller !=0x0); // make sure ther is a seller
        require(buyer == 0x0);// make sure the buyer hasn't set up it; don't sell it twice;
        require(msg.sender != seller);// don't buy it by youselfe
        require(msg.value==price); // make sure the price the buyer send is right
        
        buyer = msg.sender;
        seller.transfer(msg.value);
    }
}