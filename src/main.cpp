#include <iostream>
#include "BasicPerson/Enemy.hpp"
#include "BasicPerson/Player.hpp"
#include "Battle/Battle.hpp"

using namespace std;

int main(int argc, char const *argv[])
{
    Player *miguel = new Player("Miguel", 120, 15, 1.3, 25, 0);
    Enemy *goblin = new Enemy("Goblin", 120,15,1.2,25,0);

    Battle arena;
    arena.start(miguel, goblin);

    delete miguel, goblin;
    return 0;
}
