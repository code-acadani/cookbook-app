class Api::RecipesController < ApplicationController
	# def single_recipe_method
	# 	@recipe = Recipe.first #returns a hash or recipe data
	# 	render 'single_recipe.json.jbuilder'
	# end

	def index
		@recipes = Recipe.all
		render 'index.json.jbuilder'
	end

	def show
		# @recipe = Recipe.find_by(id: params[:id])
		@recipe = Recipe.find(params[:id])
		render 'show.json.jbuilder'
	end

	def create
		@recipe = Recipe.create(
			title: params[:title],
			chef: params[:chef],
			ingredients: params[:ingredients],
			directions: params[:directions],
			prep_time: params[:prep_time]
		)
		render 'show.json.jbuilder'
	end
end
