class Event < ActiveRecord::Base
  default_scope { order(created_at: :asc) }
end
