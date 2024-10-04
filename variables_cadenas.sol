// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract variables_cadenas{
    
address public block_now;   //adres funciona para ver la direcion del dinero actual 
uint public block_diff;     //dificultad del bloque actual
uint public block_num;  //me muestra la cadena en que bloque va 
bytes32 public block_hash  ;  // tipo de dto para el blockhash
uint public time_stamp ;    // sirve para darle la marca del tiempo , en formato epoch
uint public gas_left;     //gas gastante 
address public sender;        //quien ejecuta el contrato 
bytes4 public sig_id;         //primeros 4 bytes de la llamada de la funcion 
uint public gas_limit ;        //limite de gas del bloque actual 

function update_params()public {
    block_now = block.coinbase;
    block_diff = block.prevrandao;
    block_num = block.number;
    time_stamp = block.timestamp;
    gas_left = gasleft();
    sender = msg.sender;
    sig_id =msg.sig;
    gas_limit = block.gaslimit;  
}


}