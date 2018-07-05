class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def self.build_network
  end

  def build_show(name)
    binding.pry
    self.show.name = name[:name]
  end
end
