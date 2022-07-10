// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0;

contract Adoption {
	address[16] public adaptors;

	function adopt(uint petId) public returns (uint) {
		require(petId >= 0 && petId <= 15);
		adaptors[petId] = msg.sender;
		return petId;
	}

	// Retrieving the adopters
	// これなんだ
	function getAdoptors() public view returns(address[16] memory) {
		return adaptors;
	}

}