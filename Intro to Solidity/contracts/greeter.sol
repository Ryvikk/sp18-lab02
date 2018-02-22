pragma solidity 0.4.19;

contract Greeter {

    string private greeting;

    function Greeter(string _greeting) {
        greeting = _greeting;
    }

    function printG() public view returns (string) {
        return greeting;
    }

    function modifGreet(string _greeting) returns (string){
        return greeting = _greeting;
    }    

}
