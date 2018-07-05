class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_network(letters)
    self.network.call_letters = letters

  end
end
