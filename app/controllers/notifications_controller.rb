class NotificationsController < ApplicationController

	def index
		@notification = Notification.new
	end



  def create
  	@notification = Notification.new
    @notification.text
    render :index
    #add the code that will create a new notification and text it to the provided number 
  end

  private
  def notification_params
    #what are the params needed to make a new notification? (refer to your model)
  end
end