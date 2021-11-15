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

//en este ejercicio lo que se busca cuando un paquete se pierde lo que sucede es que no se resive la ack y se reenvia el mismo paquete con  la misma informacion
//anadir esta parte realista y no borrarlo hasta que llege la ack
simple box9a
{	
    parameters:
        //variable volatile cambia
    	@display("i=block/rxtx"); //cambiar el iciono a un dispositipo que trasmite y resive datos

    gates:
        input in;
        output out;
}
simple box9b
{	
    parameters:
        //variable volatile cambia
    	@display("i=block/rxtx");

    gates:
        input in;
        output out;
}

//ensamblamos la red
network wn9

{	

    submodules:
        //cada submodulo herada las caracteristicas de un modulo
        box9a: box9a {
          
            @display("p=69,72;i=,cyan");
        }
        box9b: box9b {
            
            @display("p=355,71");
        }
    connections:
        
        box9a.out --> {  delay = 100ms; } --> box9b.in;
        box9a.in <-- {  delay = 100ms; } <-- box9b.out;
}
