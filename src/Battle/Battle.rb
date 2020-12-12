class Battle
    def battle(player, enemy)
        puts 'Battle started'
        cmd = -1
        who_is_dead = 0
        while true
            puts "Player #{player.name} Hp #{player.hp}"
            puts "Enemy #{enemy.name} Hp #{enemy.hp}"
            puts "Type 1 for attack and 0 to run: "
            print "> "
            cmd = gets.chomp.to_i
            if cmd == 1
                puts "Player's attack"
                enemy.hp -= player.attack()
            elsif cmd == 0
                puts "You escape"
                break
            end
            if player.hp < 0
                puts "You dead"
                break
            elsif enemy.hp < 0
                puts "Enemy's dead"
                who_is_dead = 1
                break
            end
            puts "Enemy's attack"
            player.hp -= enemy.attack()
        end
        puts "#" * 25
        if who_is_dead == 1
            puts "Nice, you WIN"
            puts "#" * 25
            puts "Get's 50 gold coins!"
            player.gold += 50
        end
        puts "#" * 25
        puts 'Battle finished'
        return player, enemy
    end
end