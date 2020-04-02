Rails.application.routes.draw do
  get 'general/index'
  get 'general/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root controller: 'general', action: 'index'
end
