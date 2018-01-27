pragma solidity ^0.4.7;

contract Adoption {
  address[16] public adopters;


  // adopt function takes a int and expected to return an int
  function adopt(uint petId) public returns (uint) {

    require(petId >= 0 && petId <= 15);

    adopters[petId] = msg.sender;

    return petId;

  }


  //get adopters

  function getAdopters() public view returns ( address[16] ){
    return adopters;
  }

}