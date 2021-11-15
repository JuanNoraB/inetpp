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

//definiendo un modulo simple 
simple box1
{
    //definir puertas de entrada y de salida del modulo
    gates:
        input in;
        output out;
}

//ensamblamos la red
network wn1
{
    //aqui trabajo con submodulos
    submodules:
        box1a: box1 {
            //parametro que define la posicion del modulo en la red
            @display("p=83,192");
        }
        box1b: box1 {
            @display("p=226,192");
        }
    connections:
        //eso se va a conectar a -->
        box1a.out --> {  delay = 100ms; } --> box1b.in;
        box1a.in <-- {  delay = 100ms; } <-- box1b.out;
}

//simplemente se busca crear una comunicacion entre 2 modulos que estan intercambiando un mensaje, el envio de paquetes lo que
//se acabo de hacer es la esencia de las redes , ya sea dentro de las mismas capas del modelo osi de un dsipositivo o sea porque 
//un dispositivo envio un mensaje a travez de un cabble utp cable coaxial o por una comunicacnio inalambrica
//es envio de un mensaje recepcion de ese mensaje y todos los procesos que haya dentro de cada modulo
//para tomar una ruta una deciones de si enviar o no enviar el  mensaje  todo se repote y se centra en esto
