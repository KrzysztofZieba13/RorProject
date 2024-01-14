Rails.application.routes.draw do
  root 'offerts#index'
  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'users/index'
  get 'users/new'
  get 'users/create'

  resources :offerts do
    member do
      get 'add_cv' # Dodaj akcję GET, jeśli nie istnieje
      post 'add_cv'
      patch 'add_cv' # Dodaj trasę PATCH
      get 'download_cv/:cv_id', to: 'offerts#download_cv', as: 'download_cv'
      delete 'delete_cv/:cv_id', to: 'offerts#delete_cv', as: 'delete_cv'
    end
  end

  resources :users, only: [:index, :new, :create]
  resources :user_sessions, only: [:new, :create, :destroy]
end
