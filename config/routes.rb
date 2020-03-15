Rails.application.routes.draw do
    get 'sessions/new'
    
    root 'cafes#index'
    get  '/signup',   to: 'users#new'
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'

    resources :cafes
    resources :users
end
