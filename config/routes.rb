Tam::Application.routes.draw do
   root 'calendars#index'

  resources :activities
  resources :calendars
end
