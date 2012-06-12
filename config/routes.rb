OmniauthEng::Engine.routes.draw do
  match ':provider/callback', to: 'sessions#create'
  match 'failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout' # makes this a named route 'signout'
end
