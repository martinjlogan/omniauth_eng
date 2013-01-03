module OmniauthEng
	module ApplicationHelper
		def current_user
                        @current_user ||= User.find(session[:user_id]) if session[:user_id]
                end

                def writer_user
                        if current_user
                                current_user.is_writer?
                        else
                                nil
                        end
                end

                def admin_user
                        if current_user
                                current_user.is_admin?
                        else
                                nil
                        end
                end
	end
end
