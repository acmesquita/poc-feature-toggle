Rails.application.routes.draw do
  resources 'features', only: [:index, :new, :create, :show, :destroy]

  delete 'features/:feature_id/feature_resources/:uid', to: 'feature_resources#destroy', as: 'delete_feature_resource'
  
  root "features#index"
end
