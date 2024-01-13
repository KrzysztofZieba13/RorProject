Rails.application.routes.draw do
  root 'offerts#index'

  resources :offerts do
    member do
      get 'add_cv' # Dodaj akcję GET, jeśli nie istnieje
      post 'add_cv'
      patch 'add_cv' # Dodaj trasę PATCH
      get 'download_cv/:cv_id', to: 'offerts#download_cv', as: 'download_cv'
      delete 'delete_cv/:cv_id', to: 'offerts#delete_cv', as: 'delete_cv'
    end
  end
end
