class Characters
    attr_accessor :name, :str, :hp, :speed, :gold
    attr_reader :maxHp

    def initialize(name, str, hp, speed, gold)
        @name = name
        @str = str
        @hp = hp
        @maxHp = hp
        @speed = speed
        @gold = gold
    end
    def show()
        puts "#{@name}"
        puts "#{@str}"
        puts "#{@hp}"
        puts "#{@speed}"
        puts "#{@gold}"
    end
end