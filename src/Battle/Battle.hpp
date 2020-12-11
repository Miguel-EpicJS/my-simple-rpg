#pragma once
#include "../BasicPerson/Player.hpp"
#include "../BasicPerson/Enemy.hpp"

class Battle{
    public:
        ~Battle();

        void start(Player *char1, Enemy *char2);
};
