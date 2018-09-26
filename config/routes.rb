Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
  	get "/recipes" => "recipes#index"
  	get "/recipes/:id" => "recipes#show"
  	post "/recipes" => "recipes#create"
  	patch "/recipes/:id" => "recipes#update"
  	delete "/recipes/:id" => "recipes#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end

  get "/recipes" => "recipes#index"
  get "/recipes/new" => "recipes#new"
  get "/recipes/:id" => "recipes#show"

end
