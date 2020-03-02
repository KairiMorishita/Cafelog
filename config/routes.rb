Rails.application.routes.draw do
    root 'cafes#index'
    resources :cafes
end
