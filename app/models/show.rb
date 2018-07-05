class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def self.build_network
  end 
end
