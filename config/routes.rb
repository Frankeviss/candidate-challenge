Rails.application.routes.draw do
  root 'candidates#index'

  resources :candidates
  resources :tasks
end
