// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DegreeVerificationSystem {
    address public admin;
    
    struct Degree {
        string name;
        uint256 rollNumber;
        bool isVerified;
    }

    mapping(uint256 => Degree) public degrees;

    event DegreeAdded(uint256 rollNumber, string name);
    event DegreeVerified(uint256 rollNumber, string name);
    
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    constructor() {
        admin = msg.sender;
    }

    function addDegree(string memory _name, uint256 _rollNumber) public onlyAdmin {
        require(degrees[_rollNumber].rollNumber == 0, "Degree with this roll number already exists");

        degrees[_rollNumber] = Degree(_name, _rollNumber, false);
        emit DegreeAdded(_rollNumber, _name);
    }

    function verifyDegree(uint256 _rollNumber) public view returns (string memory name, bool isVerified) {
        Degree memory degree = degrees[_rollNumber];
        require(degree.rollNumber != 0, "Degree with this roll number does not exist");

        name = degree.name;
        isVerified = degree.isVerified;
    }

    function markAsVerified(uint256 _rollNumber) public onlyAdmin {
        require(degrees[_rollNumber].rollNumber != 0, "Degree with this roll number does not exist");
        require(!degrees[_rollNumber].isVerified, "Degree is already verified");

        degrees[_rollNumber].isVerified = true;
        emit DegreeVerified(_rollNumber, degrees[_rollNumber].name);
    }
}
