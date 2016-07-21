require("spec_helper")

describe(Ingredient) do
  describe("#recipes") do
    it('belongs to many recipes') do
      test_ingredient = Ingredient.create({:ingredient => 'Chicken'})
      test_recipe1 = Recipe.create({:name => "Jerk Chicken"})
      test_recipe2 = Recipe.create({:name => 'Jerk Chicken'})
      test_recipe1.ingredients.push(test_ingredient)
      test_recipe2.ingredients.push(test_ingredient)
      expect(test_ingredient.recipes()).to(eq([test_recipe1, test_recipe2]))
    end
  end
end
