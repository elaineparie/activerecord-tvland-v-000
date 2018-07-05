require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    first = self.first_name
    last = self.last_name
    "#{first} #{last}"
  end

  def list_roles
    self.characters.collect do |n|
    character = n.name
    self.shows.collect do |n|
      show = n.name
      "#{character} - #{show}"
    end
  end
  end
end
