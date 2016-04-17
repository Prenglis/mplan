#include "schedule.h"
Schedule::Schedule(std::vector<MassRecord> pmasses){
  masses = pmasses;
}
std::ostream& operator<<(std::ostream &strm, const Schedule &s){
  std::string vector_output;
  
  strm << "Schedule([";
  std::copy(s.masses.begin(), s.masses.end()-1, std::ostream_iterator<MassRecord>(strm, ", "));
  std::copy(s.masses.end()-1, s.masses.end(), std::ostream_iterator<MassRecord>(strm));
  return strm << vector_output << "])";
};