Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
  	resources :recipes

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end

  resources :recipes
  # get "/recipes" => "recipes#index"
  # get "/recipes/new" => "recipes#new"
  # post "/recipes" => "recipes#create"
  # get "/recipes/:id" => "recipes#show"
  # get "/recipes/:id/edit" => "recipes#edit"
  # patch "/recipes/:id" => "recipes#update"
  # delete "/recipes/:id" => "recipes#destroy"

end
