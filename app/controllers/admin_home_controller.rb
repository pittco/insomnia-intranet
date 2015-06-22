class AdminHomeController < AdminController

  def index
    @user = current_user
  end

end
