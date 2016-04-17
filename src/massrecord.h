#ifndef __MASSRECORD_H__
#define __MASSRECORD_H__
#include "acolyte.h"
#include <iostream>
#include <iterator>
#include <vector>
#include <ctime>
#include <algorithm>
class MassRecord{
  private:
  std::vector<Acolyte> acolytes;
  time_t mass_date;
  friend std::ostream& operator<<(std::ostream&, const MassRecord&);
  public:
    MassRecord(){}
    MassRecord(std::vector<Acolyte>, time_t);
    std::vector<Acolyte> get_acolytes(){
      return acolytes;
    }
    time_t get_mass_date(){
      return mass_date;
    }
    void set_acolytes(std::vector<Acolyte> pacolytes){
      acolytes = pacolytes;
    }
    void set_mass_date(time_t pmass_date){
      mass_date = pmass_date;
    }
};
#endif