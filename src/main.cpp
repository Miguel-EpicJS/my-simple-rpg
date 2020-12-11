#include <iostream>
#include "BasicPerson/Enemy.hpp"
#include "BasicPerson/Player.hpp"

using namespace std;

int main(int argc, char const *argv[])
{
    Player miguel("Miguel", 120, 15, 1.3, 25, 0);
    Enemy goblin("Goblin", 120,15,1.2,25,0);

    cout << miguel.attack() << endl;
    cout << goblin.attack() << endl;

    return 0;
}
