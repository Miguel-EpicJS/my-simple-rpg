#pragma once
#include "Character.hpp"

class Player : public Character{
    public:
        Player(std::string name, int health, int strength, float speed, int gold, int xp);
        ~Player();
        
        int attack();
        
};