class Post < ActiveRecord::Base
  belongs_to :user
  default_scope { order(created_at: :desc) }

  def author_name
    user.username rescue 'Nobody'
  end

end
