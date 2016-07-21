require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get ('/') do
  @recipes = Recipe.all()
  erb(:index)
end

post ('/recipes/new') do
  name = params.fetch("name")
  @new_recipe = Recipe.new({:name => name})
  if @new_recipe.save()
    redirect("/recipes/".concat(@new_recipe.id().to_s()))
  else
    erb(:index)
  end
end

get('/recipes/:id') do
  @recipe = Recipe.find(params.fetch("id").to_i())
  erb(:recipe_form)
end

post('/recipes/:id/ingredients') do
  @recipe = Recipe.find(params.fetch('id').to_i())
  ingredient = params['ingredient']
  @new_ingredient = Ingredient.create({:ingredient => ingredient})
  @recipe.ingredients.push(@new_ingredient)
  if @new_ingredient.save()
    redirect('/recipes/'.concat(@recipe.id().to_s()))
  else
    erb(:errors)
  end
end

post('/recipes/:id/instructions') do
  @recipe = Recipe.find(params.fetch('id').to_i())
  instruction = params['instruction']
  @recipe.update({:instruction => instruction})
  redirect('/recipes/'.concat(@recipe.id().to_s()))
end
