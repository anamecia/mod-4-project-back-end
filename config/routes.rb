Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/signin', to:'users#signin'
  post '/signup', to:'users#signup'
  get '/validate', to:'users#validate'
  get '/userreadbooks', to: 'users#userreadbooks'
  get '/userwanttoreadbooks', to: 'users#userwanttoreadbooks'
  get '/usercurrentlyreadingbooks', to: 'users#usercurrentlyreadingbooks'
  post '/books', to: 'books#create'
  post '/readings', to:'readings#create'
  
  
end
