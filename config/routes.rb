Rails.application.routes.draw do

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :keywords, only:[:new, :create, :index, :show]
    
    # # Read action routes
    # get "/keywords" => "keywords#index"
    # get "/keywords/:id" => "keywords#show"
    
    # # Create action routes
    # get "/keywords/new" => "keywords#new"
    # post "/keywords" => "keywords#create"

    # # Update action routes
    # get "/keywords/:id/edit" => "keywords#edit"
    # patch "/keywords/:id" => "keywords#update"
  
    # # Delete action routes
    # delete "/keywords/:id/delete" => "keywords#destroy"
    
  end
