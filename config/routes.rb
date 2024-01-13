Rails.application.routes.draw do
  root 'offerts#index'

  resources :offerts


end
