#include "Battle.hpp"
#include <iostream>

using namespace std;

Battle::~Battle(){
    cout << "Battle was finish" << endl;
}

void Battle::start(Player *char1, Enemy *char2){
    cout << "Battle was started" << endl;
}