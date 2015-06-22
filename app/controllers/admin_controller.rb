class AdminController < ApplicationController
  layout 'admin'

  before_filter :require_user

  private

  def require_user
    redirect_to '/auth/google_oauth2' unless session[:user_id]
  end

  helper_method def current_user
    @current_user ||= User.find(session[:user_id])
  end

end
