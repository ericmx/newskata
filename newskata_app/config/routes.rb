Rails.application.routes.draw do
  resources :microposts
  resources :users
  get  '/about',   to: 'static_pages#about'
  root 'home#index'
  get '/signup', to: 'users#new'
end
