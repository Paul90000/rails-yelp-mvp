Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end
