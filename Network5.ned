//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
//
//definimos los componetes y luego 

//se cambio el nombre de modulos y submodulos para crear archivos independientes 
//no tiene ningun cambio con respecto al primer ejecicio a mas de los nombres


//vamos a definir otro modulo 2 modulos simples sera igual que en el network4 
//la unica diferencia es que el comportamiento no lo definimos dentro de la red
//sino que lo haremos a travez de de otros modulos simples mas no de uno 
simple box5
{	
    parameters:
        //CON ESTO  le estoy diciendo al modelo de simulacion que va existir una union entre el archivo .ini y una varible dentro .cc
        //si el archivo init no personaliza esa variabole se querda con el valor del default que es 2
        int limit= default(2);
        bool sendMsgOnInit =default(false);
        //son variables que desde el archivo .ini yo podr[ia personalizar
    	@display("i=block/routing");
    //definir puertas de entrada y de salida del modulo
    gates:
        input in;
        output out;
}
//lo que permite esto de crear otros dos modulos simples es tener un comportamiento
//de manera distinta mas alla que en este ejempllo son extenciones del mismo modulo
simple box5a extends box5
{	
    parameters:
        
    	@display("i=block/routing");
    	sendMsgOnInit = true;
    //definir puertas de entrada y de salida del modulo
    
}
simple box5b extends box5
{	
    parameters:
    	@display("i=block/routing");
    	sendMsgOnInit = false;
    //definir puertas de entrada y de salida del modulo
    
}
//ensamblamos la red
network wn5

{	
    //esta variable booleana es diferente para cada modulo y nos ayudara a ver que modulo inciara sin necesidad de preguntar
    //por el nombre como lo habiamos venido haciendo 
    submodules:
        box5a1:box5a; 
        box5b1: box5b {
            @display("p=226,192");
        }
    connections:
        //eso se va a conectar a -->
        box5a1.out --> {  delay = 100ms; } --> box5b1.in;
        box5a1.in <-- {  delay = 100ms; } <-- box5b1.out;
}
