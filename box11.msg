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
//definimos las variables que va a terner mi mensaje  
message boxMsg11{
//este mensaje es que va ir de modulo en modulo
 int source; 
 int destination;
 //como el paquete va a saltar de modulo en modulo
 int hopCount=0;
 //como cualquier clase necesita un get y un set, cuando el modulo prepare el mensje necesita un set source o un set destination
 //cuando llege el mensaje a un detenrminado modulo necesito hacer un get source o un get destination
 //esas funciones que me permiten encapsular la informacion o desencapsular se hacen automanticamente al momento de compilar
}