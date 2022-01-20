Rails.application.routes.draw do
  
  #scope module: 'admin' do
  #namespace :admin do
  jsonapi_resources :users do
    jsonapi_resources :articles#, except: [:index, :destroy] 
    end
  #end  
  # resources :users
  # resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
