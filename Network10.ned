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

//crear una red en donde haya mas de un modulo,la idea sera que un modulo genere un mensaje y los otros lo sigan reenviando a derecciones aleatorias hasta que llege a un destino predeterminado
simple box10
{	
    parameters:
        //variable volatile cambia
    	@display("i=block/routing");

    gates:
        //para que tenga la capacidad de conectarce a mas de un modulo
        input in[];
        output out[];
}

//ensamblamos la red
network wn10

{	

    submodules:
        box10[6]:box10;
      
    connections:
        //como tienen una o varias salidas se pone el ++ para que sea cualquier salida
        box10[0].out++ --> {  delay = 100ms; } --> box10[1].in++;
        box10[0].in++ <-- {  delay = 100ms; } <-- box10[1].out++;
        
        box10[1].out++ --> {  delay = 100ms; } --> box10[2].in++;
        box10[1].in++ <-- {  delay = 100ms; } <-- box10[2].out++;
        
        box10[1].out++ --> {  delay = 100ms; } --> box10[4].in++;
        box10[1].in++ <-- {  delay = 100ms; } <-- box10[4].out++;
        
        box10[3].out++ --> {  delay = 100ms; } --> box10[4].in++;
        box10[3].in++ <-- {  delay = 100ms; } <-- box10[4].out++;
        
        box10[4].out++ --> {  delay = 100ms; } --> box10[5].in++;
        box10[4].in++ <-- {  delay = 100ms; } <-- box10[5].out++;
}
