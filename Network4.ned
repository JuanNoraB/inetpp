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


//cuando se quiere pasar variables desde el archivo .ini y que esas variables tengan efecto en el archivo .cc
//se tiene que modificar el archivo .net
simple box4
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

//ensamblamos la red
network wn4

{	
    //esta variable booleana es diferente para cada modulo y nos ayudara a ver que modulo inciara sin necesidad de preguntar
    //por el nombre como lo habiamos venido haciendo 
    submodules:
        box4a: box4 {
          	sendMsgOnInit= true;
            @display("p=83,192;i=,cyan");
        }
        box4b: box4 {
            sendMsgOnInit= false;
            @display("p=226,192");
        }
    connections:
        //eso se va a conectar a -->
        box4a.out --> {  delay = 100ms; } --> box4b.in;
        box4a.in <-- {  delay = 100ms; } <-- box4b.out;
}
