Rails.application.routes.draw do
  root to: "tasks#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :tasks, only: %i[index create update destroy]

  patch 'tasks', to: 'tasks#update_all'
end
