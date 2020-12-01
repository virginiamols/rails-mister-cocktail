Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: %i[index new show create delete] do
    resources :doses, only: %i[new create]
  end
end
