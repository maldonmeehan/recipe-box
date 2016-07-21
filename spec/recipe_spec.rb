require("spec_helper")

describe(Recipe) do
  describe("#ingredients") do
    it('tells which ingredients are in it') do
      test_recipe = Recipe.create({:name => 'Jerk Chicken'})
      test_ingredient1 = Ingredient.create({:ingredient => 'chicken'})
      test_ingredient2 = Ingredient.create({:ingredient => 'salt'})
      test_recipe.ingredients.push(test_ingredient1, test_ingredient2)
      expect(test_recipe.ingredients()).to(eq([test_ingredient1, test_ingredient2]))
    end
  end
end
