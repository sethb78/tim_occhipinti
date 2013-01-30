class GuestsController < ApplicationController
	def create
		@guest = Guest.new(params[:guest])
		if @guest.save
			flash[:success] = "Thank you, You are signed up for email Alerts!"
			redirect_to root_path
		end
	end
end
