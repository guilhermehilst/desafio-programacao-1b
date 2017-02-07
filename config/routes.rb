Rails.application.routes.draw do
  resources :sales
  root 'home#index'
  post 'upload', to: "upload#create"
  get 'upload', to: "upload#show"
end
