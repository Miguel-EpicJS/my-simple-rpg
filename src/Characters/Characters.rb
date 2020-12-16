class Characters
    attr_accessor :name, :str, :hp, :speed, :gold, :xp
    attr_reader :maxHp, :maxXp, :level

    def initialize(name, str, hp, speed, gold, level)
        @name = name
        @str = str
        @hp = hp
        @maxHp = hp
        @speed = speed
        @gold = gold
        @level = level
        @xp = 0
        @maxXp = (@level+1) ** 5
    end
    def show()
        puts "Name: #{@name}"
        puts "Str: #{@str}"
        puts "Hp: #{@hp}"
        puts "Speed: #{@speed}"
        puts "Gold: #{@gold}"
        puts "Level: #{@level}"
        puts "MaxXP: #{@maxXp}"
        puts "XP: #{@xp}"
    end
    def upLevel
        if @xp >= maxXp
            @xp = xp - maxXp
            @level += 1
            @maxXp = (@level+1) ** 5

            @name += @name * (10 / 100) 
            @str += @str * (10 / 100) 
            @hp += @hp * (10 / 100) 
            @maxHp += @maxHp * (10 / 100) 
            @speed += @speed * (5 / 100) 
            return true
        end
        return false
    end
end