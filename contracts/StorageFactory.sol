
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;



import "./SimpleStorage.sol";
contract StorageFactory{
    SimpleStorage[] public Storage;

    function createSimpleStorage() public {
        SimpleStorage storage = new SimpleStorage();
        Storage.push(storage)
    }



getter and setter function---------------------------------------------------------------------------------------
    uint age = 10; state variable--------------
  


    function getter() public view returns(uint){
        return age;

    }

    function setter(uint newage) public {
            age=age+1;
        age=newage;
    }




  state variable -----------------------------------------------------example2
    uint public count ;

    constructor in solidity -------------------------------------------------------------------------------------->
    constructor(){

        count=0;

        // count=new_count ;



    }


    arrays
    fixed size array and dynamic size array----------------------------------------------------------------------->
    fixed size array
    uint[4] public myarra1 =[12,123,11,23];

    function setter(uint index ,uint value) public{

        myarra1[index]=value;

    }

    function length() public view returns (uint){

        return myarra1.length;
    }



    Dynamic size array---------------------------------------------------------------------------------------->


    uint[] public myarra;

    function pushElement(uint item) public {
        myarra.push(item);
    }

    function length() public view returns(uint) {
        return myarra.length;

    }


    function popElement() public  {
        return myarra.pop();
    }

    function deleteElement(uint item) public {
         delete myarra[item];
    }

    Bytes Array (Fixed Size Array) in solidity ------------------------------------------------------------------>

    bytes3 public b3;
    bytes4 public b4;


    function setter() public {
       b3='abc';
     b4='abcd';
    } 

    bytes[] Array in  (Dynamic Size Array) in solidity-------------------------------------------------------------------->


    bytes public dynamicByte="abc";

    function pushElement() public
    {
        dynamicByte.push("e");
    }

    // for access particular index /element

    function getElement(uint i) public  view returns(bytes1) {
        return dynamicByte[i];
    }

     function getlength() public view returns(uint){
        return dynamicByte.length;
     }   


     Loops in solidity | While loop | For loop | Do while loop ------------------------------------------------------------->

    While loop---------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    uint[10] public arr;
    uint public count;

    function loop() public {
       while(count<arr.length){
           arr[count]=count;
          count++;
          }

    }


 For loop -------------------------------------------------------------------------------------------------------------------->
    function loop() public{

        for(uint i=count; i<arr.length; i++)
        {
            arr[count]=count;
            count++;

        }



    }
     do-while loop -------------------------------------------------------------------------------------------------------------------->
        function loop() public {

            do{
                    arr[count]=count;
                    count++;
            }
            while(count<arr.length);

            
        }


    If else in solidity ---------------------------------------------------------------------------------------------------------------->
    
    function check(int a) public pure returns(string memory ) 
    
    {
        string memory value;

        if(a>0){
            value="Greater then 0";
        }

        else if(a==0) {
            value="Equal to 0";
        }
        else {
            value="Less then Zero";
        }
        return value;
    }

    Bool Data type in solidity------------------------------------------------>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    bool public value ;
    function check(uint a) public returns  (bool){


        if(a>100){
            value=true;
            return value;
        }
        else {
            value=false;
            return  value;
        }

    }
}