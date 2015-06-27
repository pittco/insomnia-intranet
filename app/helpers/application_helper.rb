module ApplicationHelper

  def format_date(date)
    date.strftime("%A @ %l:%M %p")
  end

  def challonge_url(event)
    "http://challonge.com/tournaments/signup/#{event.challonge_id}"
  end 

  def organization_age
    distance_of_time_in_words(Time.now, Time.local(2003,12,25))
  end


end
