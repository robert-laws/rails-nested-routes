Rails.application.routes.draw do
  # resources :authors
  resources :authors, only: [:index, :show] do
    resources :books, only: [:index, :show, :new, :edit]
  end

  resources :books, only: [:index, :show, :new, :create, :edit, :update]

  root 'authors#index'
end
