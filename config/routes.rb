Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/signin', to:'users#signin'
  get '/validate', to:'users#validate'
end
