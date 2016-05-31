Rails.application.routes.draw do

  root to: 'dashboard#index'
  get 'dashboard/index'

  resources :cables
  resources :materials
  resources :jobs do
    collection {post :add_materials}
  end
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
