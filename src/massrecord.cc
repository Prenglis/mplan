#include "massrecord.h"
MassRecord::MassRecord(std::vector<Acolyte> pacolytes, time_t pmass_date){
  acolytes = pacolytes;
  mass_date = pmass_date;
}
std::ostream& operator<<(std::ostream &strm, const MassRecord &mr){
  std::string vector_output;
  
  strm << "MassRecord([";
  std::copy(mr.acolytes.begin(), mr.acolytes.end()-1, std::ostream_iterator<Acolyte>(strm, ", "));
  std::copy(mr.acolytes.end()-1, mr.acolytes.end(), std::ostream_iterator<Acolyte>(strm));
  return strm << "], " << mr.mass_date <<")";
}