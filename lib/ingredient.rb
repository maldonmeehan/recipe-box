require('pry')

class Ingredient < ActiveRecord::Base
  has_and_belongs_to_many :recipes
  validates(:ingredient, {:presence => true, :length => {:maximum => 50 }})
end
