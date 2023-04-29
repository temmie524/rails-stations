Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/movies", to: "movies#index"
  get "/sheets", to: "sheets#index"
  get "/movies/:id", to: "movies#show"
  get "/movies/:id/reservation", to: "movies#reservation"
  get "/movies/:movie_id/schedules/:schedule_id/reservations/new", to: "reservations#new",as: 'reservation'
  post "/reservations", to: "reservations#create"
  #admin route
  namespace :admin do
    #movie action
    get "/movies", to: "movies#index"
    get "/movies/new", to: "movies#new"
    get "/movies/:id", to: "movies#edit"

    post "/movies", to: "movies#create"
    patch "/movies/:id", to: "movies#update"
    delete "/movies/:id", to: "movies#destroy"

    #schedules action
    get "/schedules", to: "schedules#index"
    get "/movies/:id/schedules/new", to: "schedules#new"
    get "/schedules/:id", to: "schedules#edit"
    patch "/schedules/:id", to: "schedules#update"
    delete "/schedules/:id", to: "schedules#destroy"
  end

end
