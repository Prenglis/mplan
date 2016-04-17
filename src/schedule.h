#ifndef __SCHEDULE_H__
#define __SCHEDULE_H__
#include <iostream>
#include <iterator>
#include <vector>
#include <ctime>
#include <algorithm>
#include "massrecord.h"
class Schedule{
  private:
  std::vector<MassRecord> masses;
  friend std::ostream& operator<<(std::ostream&, const Schedule&);
  public:
    Schedule(){}
    Schedule(std::vector<MassRecord>);
    std::vector<MassRecord> get_masses(){
      return masses;
    }
    void set_masses(std::vector<MassRecord> pmasses){
      masses = pmasses;
    }
  
};
#endif