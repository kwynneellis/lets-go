Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Custom routes
  get "workouts/my_workouts", to: "workouts#my_workouts"

  # Application routes
  resources :workouts, only: %i[index new create show destroy edit update] do
    resources :bookings, only: %i[new create] do
      resources :ratings, only: %i[new create]
    end
  end
  resources :users, only: [:show]
  resources :bookings, only: %i[index show destroy edit update] do
    resources :ratings, only: %i[new create]
    resources :chats, only: :show do
      resources :messages, only: :create
    end
  end
end

# Defines the root path route ("/")
# root "articles#index"
