class Show < ActiveRecord::Base
  has_many :characters, :networks
  has_many :actors, through: :characters

  def build_network(letters)
    self.networcall_letters = letters

  end
end
