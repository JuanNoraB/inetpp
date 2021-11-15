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

simple box2
{
    //definir puertas de entrada y de salida del modulo
    gates:
        input in;
        output out;
}

//ensamblamos la red
network wn2
{
    //aqui trabajo con submodulos
    submodules:
        box2a: box2 {
            //parametro que define la posicion del modulo en la red
            @display("p=83,192");
        }
        box2b: box2 {
            @display("p=226,192");
        }
    connections:
        //eso se va a conectar a -->
        box2a.out --> {  delay = 100ms; } --> box2b.in;
        box2a.in <-- {  delay = 100ms; } <-- box2b.out;
}
