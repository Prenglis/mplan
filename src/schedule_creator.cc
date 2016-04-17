#include "schedule.h"
#include <iostream>
int main(){
  time_t time_entry = time(0);
  std::vector<time_t> na_list;
  std::vector<Acolyte> acolytes;
  std::vector<MassRecord> masses;
  std::string prename;
  std::string lastname;
  na_list.push_back(time_entry);
  prename = "Jo";
  lastname = "Ei";
  Acolyte acolyte(prename, lastname, na_list);
  acolytes.push_back(acolyte);
  MassRecord mass_record(acolytes, time_entry);
  masses.push_back(mass_record);
  Schedule  schedule(masses);
  std::cout << schedule;
}