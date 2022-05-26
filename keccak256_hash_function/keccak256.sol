// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract HashFunc {
    function hash(string memory text, 
                  uint num, 
                  address addr) external pure returns (bytes32) {


        // in keccak256 parameters we ne to put bytes as input
        // so first we need to encode text, num, addr as byte
    
        // the direct arguments of abi.encodePacked are encoded without
        // padding as long as they are not array or string or bytes
        // the encoding of an array is the concatentation of the encoding of its
        // elements with padding

        // Dynamicall-sized types like string, bytes, or uint[] are encoded
        // without their length field

        // The encoding of string and bytes does not apply padding at the end
        // unless it is part of an array or struct 
        // (then it is padded to a multiple of 32 bytes)

        return keccak256(abi.encodePacked(text, num, addr));

    }
 

    function encode(string memory text0, string memory text1) external pure returns (bytes memory) {
        return abi.encode(text0, text1);
    }


    function encodePacked(string memory text0, string memory text1) external pure returns (bytes memory) {
        return abi.encodePacked(text0, text1);
    }


    // to overcome collision either use abi.encode(), or rearrange the inputs
    // so that no dynamic data types are next to each other 
    function collision(string memory text0, string memory text1) external pure returns (bytes32) {
        return keccak256(abi.encodePacked(text0, text1));
    }

    function collisionFixed1(string memory text0, string memory text1) external pure returns (bytes32) {
        return keccak256(abi.encode(text0, text1));
    }

    function collisionFixed2(string memory text0, uint x, string memory text1) external pure returns (bytes32) {
        return keccak256(abi.encode(text0, x, text1));
    }



}

// encode - just encodes data into bytes
// endodePacked - also compresses the data

// hash-collision : inputs are different but the output will be the same

// if you use keccak256(abi.encodePacked(a, b)) and both a and b are dynamic
// types, it is easy to craft collisions in the hash value by moving parts
// of a into b and vice-versa
// More specifically abi.encodePacked("a", "bc") == abi.encodePacked("ab", "c")
// if you use abi.encodePackes for signatures, authentication or data integrity,
// make sure to always use the same types and check that at most one of them is dynamic
// Unless there is a compelling reason, abi.encode should be preferred




