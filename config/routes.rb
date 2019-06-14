Rails.application.routes.draw do
  root to: 'pages#index'

  resources :projects, only: %i(index create destroy update) do
    resources :tasks, only: %i(create destroy update), shallow: true
  end
  
  get '*path', to: 'pages#index'
end
