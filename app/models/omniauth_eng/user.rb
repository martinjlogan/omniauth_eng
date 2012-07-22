module OmniauthEng
	class User < ActiveRecord::Base
		attr_accessible :name, :provider, :uid

		def self.from_omniauth(auth)
			where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
		end

		def self.create_from_omniauth(auth)
			create! do |user|
				user.provider = auth["provider"]
				user.uid = auth["uid"]
				user.name = auth["info"]["nickname"]
				user.role = validate_role("reader")
			end
		end

		def is_reader?
			self.role == 'reader' || self.role == 'writer' || self.role == 'admin'
		end

		def is_writer?
			self.role == 'writer' || self.role == 'admin'
		end

		def is_admin?
			self.role == 'admin'
		end

		def self.validate_role(role)
			if role == 'reader' || role == 'writer' || role == 'admin'
				role
			else
				raise 'invalid role specification'
			end
		end
	end
end
