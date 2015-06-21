class AdminHomeController < AdminController

  def index
  end

  def login
    Rails.logger.debug request.env["omniauth.auth"]
    
    redirect_to '/admin'
  end

end
