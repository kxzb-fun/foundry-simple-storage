// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19; // solidity versions

contract SimpleStorage {
    // favoriteNumber get initialized to 0 if no value is given

    uint256 myFavoriteNumber; // 0

    // uint256 listOfFavoriteNumbers;
    struct Person {
        uint256 favoriteNumber; // uint = uint256
        string name;
    }

    // dynamic array
    Person[] public listOfPeople; // []
    // Person public pat = Person({favoriteNumber: 7, name: "Pat"});

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    //  view, pure
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    // calldata (cannot be modified), memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
