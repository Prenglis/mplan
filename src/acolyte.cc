#include "acolyte.h"
Acolyte::Acolyte(std::string pprename, std::string plastname, std::vector<time_t> pna_list){
  prename = pprename;
  lastname = plastname;
  na_list = pna_list;
}
std::ostream& operator<<(std::ostream &strm, const Acolyte &a){
  strm << "Acolyte(" <<a.prename << ", " << a.lastname << ", [";
  std::copy(a.na_list.begin(), a.na_list.end()-1, std::ostream_iterator<time_t>(strm, ", "));
  std::copy(a.na_list.end()-1, a.na_list.end(), std::ostream_iterator<time_t>(strm));
  return strm << "])";;
}  