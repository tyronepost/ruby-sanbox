class Monster
 
  attr_reader :name, :hp

  def initialize(name, hp)
    @name = name
    @hp = hp
  end

  def attack(monster)
    damage = rand(50) - rand(25)
    monster.take_damage damage
  end

  def take_damage(damage)
    @hp -= damage
    if @hp < 0
      0
    end
    @hp
  end
end
