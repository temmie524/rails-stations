Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/movies", to: "movies#index"
  get "/sheets", to: "sheets#index"


  #admin route
  namespace :admin do
    get "/movies", to: "movies#index"
    get "/movies/new", to: "movies#new"
    get "/movies/:id", to: "movies#edit"
    post "/movies", to: "movies#create"
    patch "/movies/:id", to: "movies#update"
    delete "/movies/:id", to: "movies#destroy"
  end

end
