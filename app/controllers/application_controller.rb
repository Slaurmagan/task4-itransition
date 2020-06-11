class ApplicationController < ActionController::Base
	before_action :sign_out_blocked_user,if: :user_signed_in?

	def sign_out_blocked_user
		sign_out current_user if current_user.blocked?
	end

end
