Rails.application.routes.draw do
  resources :folders
  resources :user_stocks, only: [:create,:destroy]
  devise_for :users
  namespace :admin do
    resources :dashboard
  end
  # get 'users/my_portfolio'
  root "welcome#index"
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
end
