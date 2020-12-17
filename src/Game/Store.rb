class Store
    def open(player)
        puts "What kind of item do you want?"
        print "Type 1 for damage, 2 for health and 3 xp: "
        @result = gets.chomp.to_i
        if @result == 1
            puts "The price is 20 golds for +1 of str, do you want?(Y/N)"
            @buy = gets.chomp
            if @buy == "Y"
                player.str += 1
                player.gold -= 20
            end
        elsif @result == 2
            puts "The price is 20 golds for +30 of hp, do you want?(Y/N)"
            @buy = gets.chomp
            if @buy == "Y"
                player.hp += 30
                player.gold -= 20
            end
        elsif @result == 3
            puts "The price is 20 golds for +100 of xp, do you want?(Y/N)"
            @buy = gets.chomp
            if @buy == "Y"
                player.xp += 100
                player.gold -= 20
            end
        end
    end
end