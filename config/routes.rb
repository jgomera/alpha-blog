Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #root 'pages#home'
  get 'pages/home', to: 'pages#home'
  #get 'about', to: 'root_path'
  get 'pages/about', to:'pages#about'
  #Nuevo link para crear articulos
  resources :articles


end
