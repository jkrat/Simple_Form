Rails.application.routes.draw do

  resources :examples, only: :index
  namespace :examples, path_names: { new: ''} do
    resource :vertical,   only: [:new, :create]
  end

  root to: 'examples#index'
end
