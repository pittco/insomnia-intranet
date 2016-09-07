class PagesController < ApplicationController
  def letsencrypt
    render text: ENV['LETSENCRYPT_CHALLENGE']
  end
end
