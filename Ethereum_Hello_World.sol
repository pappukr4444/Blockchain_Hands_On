// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 */
contract Hello_World {

    string Your_Name;
    string Congrats = "Congratulations, ";
    string success = ". You have successfully deployed your first smart contract";


    /**
    * String Concatation Function
    */
    function appendString(string memory _a, string memory _b, string memory _c) internal pure returns (string memory) {
    return string(abi.encodePacked(_a, _b, _c));
    }


    /**
    * Storing your inputs in Ethereum Blockchain
    */
    function store(string memory name) public {
        Your_Name = name;
    }


    /**
     * Retrive the data and Returning the value 
     */
    function retrieve() public view returns (string memory){
        return appendString(Congrats, Your_Name, success);
    }


}
