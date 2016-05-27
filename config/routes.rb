Rails.application.routes.draw do
  devise_for :users
  root to: 'dashboard#index'
  get 'dashboard/index'
  
  resources :cables
  resources :materials
  resources :jobs
  resources :inventories do
    collection { post :import }
  end
  get '/' => 'inventories#index'

  get '/jobs' => 'jobs#index'

  get '/materials' => 'materials#index'

  get '/parts' => 'jobs#parts'

  resources :materials
  resources :jobs
  resources :inventories
  get 'search/index'
  post 'search/query'


  namespace :settings do
    root to: 'index#index'

    resources :types, only: [:create, :destroy]
  end


end
