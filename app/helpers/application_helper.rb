module ApplicationHelper

  def format_date(date)
    date.strftime("%A @ %l:%M %p")
  end

  def challonge_url(event)
    "http://challonge.com/tournaments/signup/#{event.challonge_id}"
  end 

end
