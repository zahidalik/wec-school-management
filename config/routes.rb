Rails.application.routes.draw do
  root 'static_pages#home'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :students do
    member do
      get 'profile', to: 'students#profile'
    end
  end

  resources :admins do
    member do
      get 'profile', to: 'admins#profile'
    end
  end
end
