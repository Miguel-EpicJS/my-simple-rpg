#include "Enemy.hpp"

Enemy::Enemy(std::string name, int health, int strength, float speed, int gold, int xp){
    this->setName(name);
    this->setHealth(health);
    this->setStrength(strength);
    this->setSpeed(speed);
    this->setGold(gold);
    this->setXp(xp);
}
Enemy::~Enemy(){
    this->setHealth(0);
    this->setStrength(0);
    this->setSpeed(0);
    this->setGold(0);
    this->setXp(0);   
}

int Enemy::attack(){
    return this->getStrength() * this->getSpeed();
}