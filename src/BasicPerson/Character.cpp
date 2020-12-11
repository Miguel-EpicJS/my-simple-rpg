#include "Character.hpp"

void Character::setName(std::string name){this->name = name;}
void Character::setHealth(int health){this->health = health;}
void Character::setStrength(int strength){this->strength = strength;}
void Character::setSpeed(float speed){this->speed = speed;}
void Character::setGold(int gold){this->gold = gold;}
void Character::setXp(int xp){this->xp = xp;}

std::string Character::getName(){return this->name;}
int Character::getHealth(){return this->health;}
int Character::getStrength(){return this->strength;}
float Character::getSpeed(){return this->speed;}
int Character::getGold(){return this->gold;}
int Character::getXp(){return this->xp;}