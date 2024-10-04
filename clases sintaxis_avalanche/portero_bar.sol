// SPDX-License-Identifier: MIT
// Este contrato actua como un portero que solo deja entrar si es mayor de edad 
pragma solidity^ 0.8.24;
contract portero_bar{
    uint256 public numero; /// variable de estado que almacena la edad

    function establecer_numero(uint256 _numero)public {
        numero  =_numero;

    }

    function mensaje()public view returns (string memory){

        // control de flujo if-else
        if (numero> 18){
            return "puedes ingresar porque eres mayor de edad";

        }else if (numero ==18) {   //condicional secundaria
            return "acabas de cumplir 18, puedes ingresar ";

        }else { //condicional final 
        return "eres menor de edad , no pedes ingresar";
        



        }
    
        


    

    }

}

