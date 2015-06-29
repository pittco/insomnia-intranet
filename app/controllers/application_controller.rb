class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def get_event_name
    @event_name = ENV['EVENT_NAME'] || "Pittco"
  end
  
  before_filter :get_event_name
  
end
