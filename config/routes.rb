Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/signin', to:'users#signin'
  post '/signup', to:'users#signup'
  get '/validate', to:'users#validate'
  get '/userbooks', to: 'users#userbooks'
  post '/books', to: 'books#create'
  post '/readings', to:'readings#create'
  
end
