require_relative 'Characters'
require_relative '../Dice/Dice'

class Enemy < Characters
    def attack()
        dice = Dice.new
        return (@str * @speed).to_f * (dice.generate(20).to_f / 10) 
    end
    def healing()
        dice = Dice.new
        return dice.generate(20)
    end
end