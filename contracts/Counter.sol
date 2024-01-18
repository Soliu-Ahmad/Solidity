// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Counter {
    // code goes here....
    uint count;

    constructor() public {
        count = 0;
    }

    function getCounter() public view returns(uint){
        return count;
    }

    function incremenetCount() public {
        count = count + 1;
    }
}