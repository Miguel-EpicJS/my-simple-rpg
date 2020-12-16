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
        puts "#{@name}"
        puts "#{@str}"
        puts "#{@hp}"
        puts "#{@speed}"
        puts "#{@gold}"
    end
    def upLevel
        if @xp >= maxXp
            @xp = xp - maxXp
            @level += 1
            @maxXp = (@level+1) ** 5

            @name += @name * (10 / 100) 
            @str += @name * (10 / 100) 
            @hp += @name * (10 / 100) 
            @maxHp += @name * (10 / 100) 
            @speed += @name * (10 / 100) 
            @gold += @name * (10 / 100) 
            return true
        end
        return false
    end
end