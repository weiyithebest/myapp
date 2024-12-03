Rails.application.routes.draw do
  root 'home#home'
  get 'home', to: 'home#home' 

  resources :articles do
    resources :comments # nested resource
  end

  get 'signup', to: 'users#new' # This defines a custom route 
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]

end
