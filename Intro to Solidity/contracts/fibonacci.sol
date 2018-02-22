pragma solidity 0.4.19;

contract Fibonacci {
	
    function fibRec(uint number) returns(uint result) {
        if (number <= 1) return number;
        else return (fibRec(number - 1) + fibRec(number - 2));
    }

    function fibIter(uint number) returns (uint result) {
        uint i;
        uint k;
        uint l;
        uint m;
        if (number==0){
            return 0;
        }
        else if (number==1){
            return 1;
        }
        else{
            k=0;
            l=1;
            for (i=2; i<=number; i++) {
                m=k+l;
                k=l;
                l=m;
            }
        return l;
        }


    }


}
