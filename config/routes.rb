Rails.application.routes.draw do
  devise_for :users
  resources 'features'

  delete 'features/:feature_id/feature_resources/:uid', to: 'feature_resources#destroy', as: 'delete_feature_resource'

  namespace :api do
    get 'feature_toggle', to: 'feature_resources#index'
  end

  root "features#index"
end
