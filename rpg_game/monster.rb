class Monster
 
  attr_reader :name, :hp

  def initialize(name, hp)
    @name = name
    @hp = hp
  end

  def attack(monster)
    monster.take_damage damage
  end

  def take_damage(damage)
    @hp -= damage
    if @hp < 0
      @hp = 0
    end
    @hp
  end

  private
  def damage
    rand(50) - rand(25)
  end
end
