require("spec_helper")

describe(Recipe) do
  it("validates presence of name") do
    recipe = Recipe.new({:name => ''})
    expect(recipe.save()).to(eq(false))
  end

  it("validates length of name") do
    recipe = Recipe.new({:name => 'Maldon Family Famous Jerk Chicken Recipe Passed Down Through Generations of Maldons THE BEST JERK CHICKEN IN THE WORLD'})
    expect(recipe.save()).to(eq(false))
  end

  describe("#ingredients") do
    it('has many ingredients in it') do
      test_recipe = Recipe.create({:name => 'Jerk Chicken'})
      test_ingredient1 = Ingredient.create({:ingredient => 'chicken'})
      test_ingredient2 = Ingredient.create({:ingredient => 'salt'})
      test_recipe.ingredients.push(test_ingredient1, test_ingredient2)
      expect(test_recipe.ingredients()).to(eq([test_ingredient1, test_ingredient2]))
    end
  end
end
