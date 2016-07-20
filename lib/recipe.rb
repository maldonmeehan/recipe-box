require('pry')

class Recipe < ActiveRecord::Base
  has_many :measurements
  has_many :ingredients, through: :measurements
  has_and_belongs_to_many(:tags)
end
