//
// Generated file, do not edit! Created by nedtool 5.6 from box11.msg.
//

#ifndef __BOX11_M_H
#define __BOX11_M_H

#if defined(__clang__)
#  pragma clang diagnostic ignored "-Wreserved-id-macro"
#endif
#include <omnetpp.h>

// nedtool version check
#define MSGC_VERSION 0x0506
#if (MSGC_VERSION!=OMNETPP_VERSION)
#    error Version mismatch! Probably this file was generated by an earlier version of nedtool: 'make clean' should help.
#endif



/**
 * Class generated from <tt>box11.msg:15</tt> by nedtool.
 * <pre>
 * //
 * // This program is free software: you can redistribute it and/or modify
 * // it under the terms of the GNU Lesser General Public License as published by
 * // the Free Software Foundation, either version 3 of the License, or
 * // (at your option) any later version.
 * // 
 * // This program is distributed in the hope that it will be useful,
 * // but WITHOUT ANY WARRANTY; without even the implied warranty of
 * // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * // GNU Lesser General Public License for more details.
 * // 
 * // You should have received a copy of the GNU Lesser General Public License
 * // along with this program.  If not, see http://www.gnu.org/licenses/.
 * //definimos las variables que va a terner mi mensaje  
 * message boxMsg11
 * {
 *     //este mensaje es que va ir de modulo en modulo
 *     int source;
 *     int destination;
 *     //como el paquete va a saltar de modulo en modulo
 *     int hopCount = 0;
 *  //como cualquier clase necesita un get y un set, cuando el modulo prepare el mensje necesita un set source o un set destination
 *  //cuando llege el mensaje a un detenrminado modulo necesito hacer un get source o un get destination
 *  //esas funciones que me permiten encapsular la informacion o desencapsular se hacen automanticamente al momento de compilar
 * }
 * </pre>
 */
class boxMsg11 : public ::omnetpp::cMessage
{
  protected:
    int source;
    int destination;
    int hopCount;

  private:
    void copy(const boxMsg11& other);

  protected:
    // protected and unimplemented operator==(), to prevent accidental usage
    bool operator==(const boxMsg11&);

  public:
    boxMsg11(const char *name=nullptr, short kind=0);
    boxMsg11(const boxMsg11& other);
    virtual ~boxMsg11();
    boxMsg11& operator=(const boxMsg11& other);
    virtual boxMsg11 *dup() const override {return new boxMsg11(*this);}
    virtual void parsimPack(omnetpp::cCommBuffer *b) const override;
    virtual void parsimUnpack(omnetpp::cCommBuffer *b) override;

    // field getter/setter methods
    virtual int getSource() const;
    virtual void setSource(int source);
    virtual int getDestination() const;
    virtual void setDestination(int destination);
    virtual int getHopCount() const;
    virtual void setHopCount(int hopCount);
};

inline void doParsimPacking(omnetpp::cCommBuffer *b, const boxMsg11& obj) {obj.parsimPack(b);}
inline void doParsimUnpacking(omnetpp::cCommBuffer *b, boxMsg11& obj) {obj.parsimUnpack(b);}


#endif // ifndef __BOX11_M_H

