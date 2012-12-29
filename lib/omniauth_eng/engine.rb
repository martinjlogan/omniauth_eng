
module OmniauthEng
	require 'omniauth'
	require 'omniauth-twitter'
	require 'omniauth-facebook'

	class Engine < ::Rails::Engine
		isolate_namespace OmniauthEng
	end
end

