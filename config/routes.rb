Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :rooms , only: [:index , :create , :show]
      resources :messages , only: [:index , :create]
      resources :users, only: [:create , :index]
      get '/profile', to: 'users#profile'
      post "/login", to: "authentication#login"
      mount ActionCable.server => '/cable'
    end
  end
  
end
