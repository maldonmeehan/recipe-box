## Ruby Database with Active Record - Many-to-Many - Recipe Box

An an app that allows users to keep track of recipes, July 21, 2016

By Molly McGlone & Maldon Meehan

## Description

An Epicodus student project to practice a many-to-many Ruby database with Active Record.

* As a user, I want to add a recipe with ingredients and instructions, so I remember how to prepare my favorite dishes.

* As a user, I want to tag my recipes with different categories, so recipes are easier to find. A recipe can have many tags and a tag can have many recipes.

* As a user, I want to be able to update and delete tags, so I can have flexibility with how I categorize recipes.

* As a user, I want to edit my recipes, so I can make improvements or corrections to my recipes.

* As a user, I want to be able to delete recipes I don't like or use, so I don't have to see them as choices.

* As a user, I want to rate my recipes, so I know which ones are the best.

* As a user, I want to list my recipes by highest rated so I can see which ones I like the best.

* As a user, I want to see all recipes that use a certain ingredient, so I can more easily find recipes for the ingredients I have.

## Setup/Installation Requirements

Install *Recipe Box* by cloning the repository.  
```
$ git clone https://github.com/maldonmeehan/recipe-box.git
or https://github.com/mollykmcglone/Recipe_Box.git
```

Install required gems:
```
$ bundle install
```

Run Postgress:
```
$ postgres
```

Open a new window and run:
```
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
```

Start the Sinatra webserver:
```
$ ruby app.rb
```

Navigate to `localhost:4567` in your browser of choice.

## Known Bugs

No known bugs at this point

## Support and contact details

If you have any questions please feel free to contact Maldon and Molly on github

## Technologies Used

* Ruby
* Postgres
* Sinatra

### License

MIT License

Copyright (c) 2016, **Molly McGlone & Maldon Meehan, Epicodus**
