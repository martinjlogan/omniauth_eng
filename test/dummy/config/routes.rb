Rails.application.routes.draw do

  root :to => "pages#index"
  match '/show', to: 'pages#show'

  mount OmniauthEng::Engine => "/auth", as: 'auth'
end
