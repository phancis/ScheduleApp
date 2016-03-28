Rails.application.routes.draw do
  get 'users/index'

  get 'users/create'

  get 'users/show'

  get 'users/destroy'

  get 'users/update'

  get 'users/edit'

  get 'home/index'

  root 'home#index'
end
