Rails.application.routes.draw do
  root to: 'todos#index'
  resources :todos
  get 'todos/:active', to: 'todos#index', as: 'active'
  get 'todos/:completed', to: 'todos#index', as: 'completed'
end
