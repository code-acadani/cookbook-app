Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
  	get "/single_recipe_url" => "recipes#single_recipe_method"
  end

  # get "/api/single_recipe_url" => "api/recipes#single_recipe_method"

end
