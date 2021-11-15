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


simple box7
{	
    parameters:
        //variable volatile cambia
        volatile double delayTime @unit(s); //defino sus unidades en segundo
    	@display("i=block/routing");

    gates:
        input in;
        output out;
}

//ensamblamos la red
network wn7

{	

    submodules:
        box7a: box7 {
          
            @display("p=69,72;i=,cyan");
        }
        box7b: box7 {
            
            @display("p=355,71");
        }
    connections:
        
        box7a.out --> {  delay = 100ms; } --> box7b.in;
        box7a.in <-- {  delay = 100ms; } <-- box7b.out;
}
