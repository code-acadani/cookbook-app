class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
		render 'index.html.erb'
	end

	def new
		@users = User.all
		render 'new.html.erb'
	end

	def create
		@recipe = Recipe.new(
			title: params[:title],
			ingredients: params[:ingredients],
			directions: params[:directions],
			prep_time: params[:prep_time],
			image_url: params[:image_url],
			user_id: params[:user_id]
		)

		@recipe.save
		redirect_to "/recipes/#{@recipe.id}"
	end

	def show
		@recipe = Recipe.find(params[:id])
		render 'show.html.erb'
	end

	def edit
		@users = User.all
		@recipe = Recipe.find(params[:id])
		render 'edit.html.erb'
	end

	def update
		@recipe = Recipe.find(params[:id])
		@recipe.title = params[:title]
		@recipe.ingredients = params[:ingredients]
		@recipe.directions = params[:directions]
		@recipe.image_url = params[:image_url]
		@recipe.prep_time = params[:prep_time]
		@recipe.user_id = params[:user_id]
		@recipe.save
		redirect_to "/recipes/#{@recipe.id}"
	end

	def destroy
		@recipe = Recipe.find(params[:id])
		@recipe.destroy
		redirect_to "/recipes"
	end

end













