class Post < ActiveRecord::Base
  belongs_to :user
  default_scope { order(created_at: :desc) }

  validates :title, presence: true
  validates :body, presence: true

  def author_name
    user.username rescue 'Nobody'
  end

  def rendered_body
    renderer = Redcarpet::Render::HTML.new(no_styles: true, escape_html: true)
    markdown = Redcarpet::Markdown.new(renderer)
    markdown.render(self.body).html_safe
  end

end
