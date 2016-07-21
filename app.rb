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

post ('/recipe/:id') do
  @name = params.fetch('name')
  ingredient1 = params['ingredient1']
  ingredient1 = Ingredient.create({:ingredient => ingredient1})
  ingredient2 = params['ingredient2']
  ingredient2 = Ingredient.create({:ingredient => ingredient2})
  ingredient3 = params['ingredient3']
  ingredient3 = Ingredient.create({:ingredient => ingredient3})
  ingredient4 = params['ingredient4']
  ingredient4 = Ingredient.create({:ingredient => ingredient4})
  ingredient5 = params['ingredient5']
  ingredient5 = Ingredient.create({:ingredient => ingredient5})
  @ingredients = Ingredient.all()
  erb(:recipe)
end
