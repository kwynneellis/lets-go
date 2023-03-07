Rails.application.routes.draw do
  devise_for :users
  root to: "workouts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :workouts, only: %i[index new create show destroy edit update]
end
