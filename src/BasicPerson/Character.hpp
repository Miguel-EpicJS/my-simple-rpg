#pragma once
#include <iostream>

class Character{
    public:
        std::string getName();
        void setName(std::string);
        int getHealth();
        void setHealth(int);
        int getStrength();
        void setStrength(int);
        float getSpeed();
        void setSpeed(float);
        int getGold();
        void setGold(int);
        int getXp();
        void setXp(int);

    private:
        std::string name;
        int health;
        int strength;
        float speed;
        int gold;
        int xp;
};