class Event < ActiveRecord::Base
  default_scope { order(starts_at: :desc) }
end
