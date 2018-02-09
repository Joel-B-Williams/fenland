module SessionsHelper

		def current_user
				User.find_by(id: session[:user_id])
		end

		def current_email
			if current_user
				current_user.email
			end
		end

		def logged_in?
			current_user
		end

end
