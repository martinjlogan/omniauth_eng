
module OmniauthEng
	require 'omniauth'
	require 'omniauth-twitter'

	class Engine < ::Rails::Engine
		isolate_namespace OmniauthEng
	end
end

