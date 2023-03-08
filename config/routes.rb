Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :workouts, only: %i[index new create show destroy edit update] do
    resources :bookings, only: %i[new create] do
      resources :ratings, only: %i[new create]
    end
  end
  resources :bookings, only: %i[index show destroy edit update] do
    resources :ratings, only: %i[new create]
  end
end

# Defines the root path route ("/")
# root "articles#index"
