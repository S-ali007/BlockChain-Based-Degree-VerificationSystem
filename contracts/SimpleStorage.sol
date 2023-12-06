// SPDX-License-Identifier: MIT
pragma solidity >=0.8.1;


// EVM , Etherem Virtual Machine
// Avalanche ,Fantom, Poloygon

contract SimpleStorage {
    // boolean ,uint .int ,address ,bytes

    uint256 public rollNumber;
    string public fullName;

    mapping (uint256 => string) public searchByRollNumber;

    struct People {
        uint256 rollNumber;
        string fullName;
    }

    People[] public people;

    function addStudents(uint256 _rollNumber, string memory _name) public {
        // People memory newPerson = People({
        //     rollNumber: _rollNumber,
        //     fullName: _name
        // });
 
        // people.push(newPerson);

        rollNumber = _rollNumber;
        fullName = _name;


    // way2
         people.push(People(_rollNumber,_name));


        // ENV overview ( can access and store  information in six pieces )
        // calldata ,memory and storage

                searchByRollNumber[_rollNumber] = _name;

    }

    function retrive() public view returns (uint256, string memory) {
        return (rollNumber, fullName);
    }

    // function add() public  pure returns  (uint256) {
    //     return(1+1);
    // }

    // 0xd9145CCE52D386f254917e481eB44e9943F39138
}
