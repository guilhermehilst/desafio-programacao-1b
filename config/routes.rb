Rails.application.routes.draw do
  root 'home#index'
  post 'upload', to: "upload#create"
  get 'upload', to: "upload#show"
end
