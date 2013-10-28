Tam::Application.routes.draw do
  root 'statistics#index'

  resources :activities, :except => [:show]
  resources :calendars, :except => [:show]
end
