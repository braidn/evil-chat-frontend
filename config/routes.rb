Rails.application.routes.draw do
  root to: 'chat#index'
  get :login, to: 'auth#new'
  post :login, to: 'auth#create'
end
