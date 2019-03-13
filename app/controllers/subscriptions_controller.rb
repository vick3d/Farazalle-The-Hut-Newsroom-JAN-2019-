class SubscriptionsController < ApplicationController
  def new
  end

	def create
		redirect_to root_path, notice: "Welcome to the family!"
  end
end
