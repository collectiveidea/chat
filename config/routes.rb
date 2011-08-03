Chat::Application.routes.draw do
  resources :messages, :only => [:index, :create, :destroy]
end
