Rails.application.routes.draw do
  resources 'features', only: [:index, :new, :create]
  
  root "features#index"
end
