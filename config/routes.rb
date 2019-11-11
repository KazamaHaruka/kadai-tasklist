Rails.application.routes.draw do
  root to: 'tasks#index'
  
  # index: show の補助ページ
  get '/tasks', to: 'tasks#index'
  
  resources :tasks, except: [:index]
end