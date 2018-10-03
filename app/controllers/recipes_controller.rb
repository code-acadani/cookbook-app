class RecipesController < ApplicationController
	before_action :set_recipe, only: [:show, :edit, :update, :destroy]

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
		render 'show.html.erb'
	end

	def edit
		@users = User.all
		render 'edit.html.erb'
	end

	def update
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
		@recipe.destroy
		redirect_to "/recipes"
	end

end


private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end












