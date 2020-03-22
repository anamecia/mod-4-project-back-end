Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/signin', to:'users#signin'
  post '/signup', to:'users#signup'
  get '/validate', to:'users#validate'
  get '/userreadings', to:'users#user_readings'
  get '/userreadbooks', to: 'users#userreadbooks'
  get '/userwanttoreadbooks', to: 'users#userwanttoreadbooks'
  get '/usercurrentlyreadingbooks', to: 'users#usercurrentlyreadingbooks'
  get '/readings/:id', to: 'readings#show'
  post '/books', to: 'books#create'
  post '/readings', to:'readings#create'
  patch '/readings/:id', to:'readings#update'
  delete '/reading/:id', to:'readings#destroy'
  
  
end
