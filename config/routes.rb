Rails.application.routes.draw do
  namespace :admin do
    get "/booking_tours", to: "admin#new"
  end

  resources :tours, only: :show
  get "/login", to: "session#new"
  post "/login", to: "session#create"
  delete "/logout", to: "session#destroy"
  root "static_page#home"
  post "/bookings", to: "bookings#create"
end
