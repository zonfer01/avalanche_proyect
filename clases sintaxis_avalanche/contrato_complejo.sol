
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract contrato_complejo{
    string saludo_d= "hola mundo dinamico";
    string public saludo_estatico = "hola mundo estatico ";

    //function se usa para leer funciones - el public se usa para llamar funciones en el depolid
    //memory se usa com memoria de la red(siempre se usa para acceder a las variables de la red )
    //returns para a retornar a la memoria 
    //return para retornar a la función 
    function leer_saludo()public view returns (string memory){
        return saludo_d;
    }
    //llamar  la funcion par poder guardar nuevo datos en la red 
 function guardar_saludo(string memory nuevo_saludo)public {
    saludo_d= nuevo_saludo;
 }
}