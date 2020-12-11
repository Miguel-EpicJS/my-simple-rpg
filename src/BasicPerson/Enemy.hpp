#pragma once
#include "Character.hpp"

class Enemy : public Character{
    public:
        Enemy(std::string name, int health, int strength, float speed, int gold, int xp);
        ~Enemy();
        
        int attack();
        
};