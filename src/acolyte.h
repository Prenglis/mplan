#ifndef __ACOLYTE_H__
#define __ACOLYTE_H__
#include <iostream>
#include <iterator>
#include <vector>
#include <string>
#include <ctime>
#include <algorithm>
class Acolyte{
  private:
    std::string prename;
    std::string lastname;
    std::vector<time_t> na_list;
    friend std::ostream& operator<<(std::ostream&, const Acolyte&);
  public:
    Acolyte(){}
    Acolyte(std::string, std::string, std::vector<time_t>);
    std::string get_fullname(){
      return prename + lastname;
    }
    std::string get_prename(){
      return prename;
    }
    std::string get_lastname(){
      return lastname;
    }
    std::vector<time_t> get_na_list(){
      return na_list;
    }
    void set_na_list(std::vector<time_t> pna_list){
      na_list = pna_list;
    }
  
};
#endif