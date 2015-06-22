class Event < ActiveRecord::Base
  default_scope { order(starts_at: :desc) }

  validates :name, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true
end
