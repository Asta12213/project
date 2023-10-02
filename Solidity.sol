// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Tokn {

    function Mint1(address Adres,uint Data) public 
    {
        TSuply += Data;
        balances[Adres] += Data;
    }
     function burn (address Adres,uint Data) public 
    {
        if(Data <=balances[Adres] )
        {
        TSuply = TSuply  -  Data;
        balances[Adres] = balances[Adres] - Data;
        }
    }

    uint public TSuply = 0;
    string public ToknA="cr";
    string public ToknB="CR";
    mapping(address => uint )public balances;

}
