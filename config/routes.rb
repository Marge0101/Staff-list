Rails.application.routes.draw do
  
  root to: 'staffs#index'
  resources :staffs
  
  get 'staffs/index'

  get 'staffs/show'

  get 'staffs/new'

  get 'staffs/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
