class Team
  attr_accessor :name, :motto
  @@all = []
  def initialize(attr)
    @name = attr[:name]
    @motto = attr[:motto]
    @@all << self
  end

  def self.all
    @@all
  end
end
