class Api::RecipesController < ApplicationController
	def single_recipe_method
		@recipe = Recipe.first #returns a hash or recipe data
		render 'single_recipe.json.jbuilder'
	end
end
