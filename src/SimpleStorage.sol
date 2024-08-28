// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleStorage {
    // Struct to represent a Person
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // State variable to store a number
    uint256 public storedNumber;

    // Array to store a list of people
    Person[] public people;

    // Mapping from name to favorite number
    mapping(string => uint256) public nameToFavoriteNumber;

    // Function to store a number
    function store(uint256 _number) public {
        storedNumber = _number;
    }

    // Function to retrieve the stored number
    function retrieve() public view returns (uint256) {
        return storedNumber;
    }

    // Function to add a person to the people array and update the mapping
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // Add a new person to the array
        people.push(Person(_favoriteNumber, _name));

        // Update the mapping
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    // Function to get a person by index from the people array
    function getPerson(
        uint256 _index
    ) public view returns (string memory, uint256) {
        require(_index < people.length, "Index out of bounds");
        Person memory person = people[_index];
        return (person.name, person.favoriteNumber);
    }
}
