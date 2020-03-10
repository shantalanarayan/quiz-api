# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :quizzes, except: %i[new edit]
  resources :examples, except: %i[new edit]

  # Custom routes
  get '/quiz_banks/:quiz_id/:id' => 'quiz_banks#show'
  get '/quiz_banks/:quiz_id' => 'quiz_banks#index'
  post '/quiz_banks/:quiz_id' => 'quiz_banks#create'
  delete '/quiz_banks/:quiz_id/:id' => 'quiz_banks#destroy'
  patch  '/quiz_banks/:quiz_id/:id' => 'quiz_banks#update'

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
