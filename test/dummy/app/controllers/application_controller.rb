class ApplicationController < ActionController::Base
  protect_from_forgery

  helper OmniauthEng::Engine.helpers # Make an engines helpers available in this app
end
