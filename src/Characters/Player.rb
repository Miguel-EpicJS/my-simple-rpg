require_relative 'Characters'
require_relative '../Dice/Dice'

class Player < Characters
    def attack()
        dice = Dice.new
        return (@str * @speed).to_f * (dice.generate(20).to_f / 10) 
    end
end