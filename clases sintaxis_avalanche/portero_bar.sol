// SPDX-License-Identifier: MIT
// Este contrato actua como un portero que solo deja entrar si es mayor de edad 
pragma solidity^ 0.8.24;
contract portero_bar{
    uint256 public numero; /// variable de estado que almacena la edad
    uint256 public edad_init;  // se establece la edad limite , para la mayoria de edad

    constructor (uint256 _edad_init){
        edad_init = _edad_init;
    }


    function establecer_numero(uint256 _numero)public {
        numero  =_numero;

    }

    function mensaje()public view returns (string memory){

        // control de flujo if-else
        if (numero>  edad_init){
            return "puedes ingresar porque eres mayor de edad";

        }else if (numero ==edad_init) {   //condicional secundaria
            return "acabas de cumplir la mayoria de edad, puedes ingresar ";

        }else { //condicional final 
        return "eres menor de edad , no puedes ingresar";
        



        }
    
        


    

    }

}

