pragma solidity ^0.6.0;

contract ZilStorage {

    // this will get initialized to 0!
    uint256 favoriteNumber;
    bool favoritBool;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public person;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People({favoriteNumber: _favoriteNumber, name: _name}));
    }

}
