Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  
  patch 'users/:id/', to: 'users#update'
  
  resources :users, only: [:show, :new, :create] do
    member do
      get :followings
      get :followers
    end
    
    collection do
      get 'users/:id/edit', to: 'users#edit'
    end
  end

  resources :relationships, only: [:create, :destroy]
  
  resources :messages
end
