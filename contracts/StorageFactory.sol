
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;



import "./SimpleStorage.sol";



  Structure in solidity | Struct in Solidity | ---------------------------------------------------->>>>>>>>>>>>>>>
    struct Student{

        uint roll;
        string name;
        uint class;
        string section;

    }
contract StorageFactory{
    // SimpleStorage[] public Storage;

    // function createSimpleStorage() public {
    //     SimpleStorage storage = new SimpleStorage();
    //     Storage.push(storage)
    // }



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



  Student public s1;
  Student public s2;
  Student public s3;
  Student public s4;
  Student public s5;

  constructor(uint _roll,string memory _name,uint _class,string memory _section){

        s1.roll=_roll;
        s1.name=_name;
        s1.class=_class;
        s1.section=_section;

        s2.roll=_roll;
        s2.name=_name;
        s2.class=_class;
        s2.section=_section;
        

        s3.roll=_roll;
        s3.name=_name;
        s3.class=_class;
        s3.section=_section;

        s4.roll=_roll;
        s4.name=_name;
        s4.class=_class;
        s4.section=_section;

        s5.roll=_roll;
        s5.name=_name;
        s5.class=_class;
        s5.section=_section;



  }

    function change1(uint _roll,string memory _name,uint _class,string memory _section) public {
        Student memory new_Student=Student({
            roll:_roll,
            name:_name,
            class:_class,
            section:_section
          
          
        });

            s1=new_Student;

    }
     function change2(uint _roll,string memory _name,uint _class,string memory _section) public {
        Student memory new_Student=Student({
            roll:_roll,
            name:_name,
            class:_class,
            section:_section
          
          
        });

            s2=new_Student;

    }
     function change3(uint _roll,string memory _name,uint _class,string memory _section) public {
        Student memory new_Student=Student({
            roll:_roll,
            name:_name,
            class:_class,
            section:_section
          
          
        });

            s3=new_Student;

    }
     function change4(uint _roll,string memory _name,uint _class,string memory _section) public {
        Student memory new_Student=Student({
            roll:_roll,
            name:_name,
            class:_class,
            section:_section
          
          
        });

            s4=new_Student;

    }

Enum in solidity | Solidity Latest Version -------------------------------------------------------------------------------------------------------------------------------------->>>>>>>>>>>>>>>>
 Example ---------------------1
enum FreshJuiceSize{ SMALL, MEDIUM, LARGE }
   FreshJuiceSize choice;
   FreshJuiceSize constant defaultChoice = FreshJuiceSize.MEDIUM;

   function setLarge() public {
      choice = FreshJuiceSize.LARGE;
   }
   function getChoice() public view returns (FreshJuiceSize) {
      return choice;
   }
   function getDefaultChoice() public pure returns (uint) {
      return uint(defaultChoice);
   }


Example------------------------2
enum user{allowed,not_allowed,wait}


user public u1=user.wait;


Example -------------------------------------------------------3

enum user{allowed,not_allowed,wait}

user public u1=user.allowed;
uint public lottery=1000;

function owner() public{
    if (user.allowed == u1){
        lottery=1000;
    }
    else {
        lottery=0;
    }
} 



Mapping in solidity | Solidity Latest Version ---------------------------------------------------------->>>>>>>>>>>>>>

mapping (uint => string) public roll_no;

function setter(uint keys,string memory value ) public {

    roll_no[keys]=value;
}

}