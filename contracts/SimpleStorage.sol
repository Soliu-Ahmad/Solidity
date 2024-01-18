// I'm a comment!
// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;
// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;


// EVM, ethereum Virtual, Machine
// is a standard of how to deployed smart contract on ethereum in blockchain
// Avalanche, Fantom, Polygon
contract SimpleStorage {


    // This is gets initialized to Zero!
    // <- This means that this section is a comment!
    uint256 favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;
    People[] public people;

    mapping(string => uint256) public nameToFavoriteNumber;

     

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    

    // view, pure
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }
    // calldata, memory, storage 
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}