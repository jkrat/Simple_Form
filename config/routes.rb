Rails.application.routes.draw do

  resources :examples, only: :index
  namespace :examples do
    get 'verticals/new'
    get 'verticals/create'
  end

  root to: 'examples#index'
end
