Rails.application.routes.draw do
  root to: 'inventories#index'

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



end
