class Api::RecipesController < ApplicationController
	# def single_recipe_method
	# 	@recipe = Recipe.first #returns a hash or recipe data
	# 	render 'single_recipe.json.jbuilder'
	# end

	def index
		@recipes = Recipe.all

		if params[:search]
			@recipes = Recipe.where("directions LIKE ? OR title LIKE ? OR ingredients LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
		end

		@recipes = @recipes.order(id: :asc)

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

	def update
		# update an existing recipe
		@recipe = Recipe.find(params[:id])

		@recipe.title = params[:title] || @recipe.title
		@recipe.chef = params[:chef] || @recipe.chef
		@recipe.ingredients = params[:ingredients] || @recipe.ingredients
		@recipe.directions = params[:directions] || @recipe.directions
		@recipe.prep_time = params[:prep_time] || @recipe.prep_time

		@recipe.save
		render 'show.json.jbuilder'
	end

	def destroy
		@recipe = Recipe.find(params[:id])
		@recipe.destroy
		render json: {message: "Recipe successfully destroyed"}
	end
end














