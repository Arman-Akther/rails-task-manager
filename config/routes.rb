Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'tasks#index'
  get 'tasks', to: 'tasks#index', as: :home
  get 'tasks/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create', as: :create
  get 'tasks/:id', to: 'tasks#show', as: :task
end
