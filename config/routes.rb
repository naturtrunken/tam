Tam::Application.routes.draw do
  root 'statistics#index'

  resources :activities
  resources :calendars
end
