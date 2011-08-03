Chat::Application.routes.draw do
  get "login" => "sessions#new"
  delete "logout" => "sessions#destroy"

  get "auth/twitter/callback" => "sessions#create", :success => true
  get "auth/failure" => "sessions#create", :success => false
  get "auth/twitter" => proc{ [404, {}, []] }

  resources :messages, :only => [:create, :destroy]

  root :to => "messages#index"
end
