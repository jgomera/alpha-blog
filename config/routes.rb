Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#Esto me permite enrutar siempre al directorio raiz de mi pagina Solved by Jgomera
  root 'pages#home'

  get 'pages/about', to:'pages#about'
  #Nuevo link para crear articulos
  resources :articles


end
