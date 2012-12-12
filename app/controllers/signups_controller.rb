class SignupsController < ApplicationController
	def index
		@signup = Signup.new
	end

	def create	
		# Signup.create params[:signup]

		@signup = Signup.new(params[:signup])
		if @signup.save
			flash[:success] = "You're on the list, we'll see you soon!"
		else
			flash[:error]  = "Sorry, looks like you're already on the list."
		end

		redirect_to :back
	end
end
