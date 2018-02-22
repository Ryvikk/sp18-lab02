pragma solidity 0.4.19;

contract XOR{
    
    function xor(uint a, uint b) public pure returns (uint){
        if (a==b) return 0;
        else if (a!=b) return 1;
    }

    function xor(string u, string v) public pure returns (string) {
        bytes memory _u = bytes(u);
        bytes memory _v = bytes(v);
        uint k = 0;
        uint l = 0;
        if (_u.length>=_v.length) {
            bytes memory _xor = new bytes(_u.length);
            k = _u.length - _v.length;

        }
        else {
            bytes memory _xor = new bytes(_v.length);
            k = _v.length - _u.length;
            l=1;
        }
        uint i = 0;
        uint j = k;
        for (i=0; i<_xor.length; i++){
            if (j!=0){
                if (l==0){
                    if (_u[i] != 0) {
                        _xor[i] = "1";
                    } else {
                        _xor[i] = "0";
                    }
                }
                else if (l==1){
                    if (_v[i] != 0) {
                        _xor[i] = "1";
                    } else {
                        _xor[i] = "0";
                    }
                }
                j=j-1;
            }
            else{
                if (_u[i] != _v[i]) {
                    _xor[i] = "1";
                } else {
                    _xor[i] = "0";
                }
            }
            i++;
        }
        
        return string(_xor);
    }

}
