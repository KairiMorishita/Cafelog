Rails.application.routes.draw do
   get 'users/new'

    root 'cafes#index'
    resources :cafes
    resources :users
end
