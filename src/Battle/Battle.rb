class Battle
    def battle(player, enemy)
        enemy.hp = enemy.maxHp
        puts 'Battle started'
        cmd = -1
        who_is_dead = 0
        while true
            puts "Player #{player.name} Hp #{player.hp}"
            puts "Enemy #{enemy.name} Hp #{enemy.hp}"
            puts "Type 2 for healing, 1 for attack and 0 to run: "
            print "> "
            cmd = gets.chomp.to_i
            if cmd == 1
                puts "Player's attack"
                enemy.hp -= player.attack()
            elsif cmd == 2
                if player.hp < player.maxHp
                    puts "Healing..."
                    player.hp += player.healing
                    sleep(2)
                    puts "Your hp is #{player.hp}"
                else
                    puts "You have the max health"
                end
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
            puts "You ear #{enemy.maxXp / 2} xp"
            player.xp += enemy.maxXp / 2
            levelUp = 0
            while player.upLevel
                levelUp += 1
            end
            if levelUp > 0
                puts "WOW, you up #{levelUp} your level, your stats is"
                player.show
            end
        end
        puts "#" * 25
        puts 'Battle finished'
        return player, enemy
    end
end