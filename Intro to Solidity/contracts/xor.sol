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
        uint j = 0;
        uint i = 0;
        if (_u.length>=_v.length) {
            bytes memory _xor = new bytes(_u.length);
            k = _u.length - _v.length;
            j = k;
            for (i=0; i<_xor.length; i++){
                if (j!=0){                
                    if (_u[i] != "0") {
                        _xor[i] = "1";
                    } else {
                        _xor[i] = "0";
                    }
                    j--;
                }
                else{
                    if (_u[i] != _v[i-k]) {
                        _xor[i] = "1";
                    } else {
                        _xor[i] = "0";
                    }
                }

            }
        return string(_xor);
        }
        
        else {
            bytes memory _xorr = new bytes(_v.length);
            k = _v.length - _u.length;
            j = k;
            for (i=0; i<_xorr.length; i++){
                if (j!=0){                
                    if (_v[i] != "0") {
                        _xorr[i] = "1";
                    } else {
                        _xorr[i] = "0";
                    }
                    j--;
                }
                else{
                    if (_u[i-k] != _v[i]) {
                        _xorr[i] = "1";
                    } else {
                        _xorr[i] = "0";
                    }
                }
                
            }
        return string(_xorr);
        }
    }

    function(){}

}
