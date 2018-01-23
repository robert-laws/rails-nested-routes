Rails.application.routes.draw do
  # resources :authors
  resources :authors, only: [:index, :show] do
    resources :books, only: [:index, :show, :new]
  end

  resources :books, only: [:index, :show]

  root 'authors#index'
end
