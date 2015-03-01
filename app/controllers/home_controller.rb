class HomeController < ActionController::Base

  def index
  	# Used when token is required
    # @twitch = Twitch.new({
    #   :client_id => ENV['client_id'],
    #   :secret_key => ENV['secret_key'],
    #   :redirect_uri => ENV['redirect_uri'],
    #   :scope => ["user_read", "channel_read", "user_follows_edit"]
    # })
    @twitch = Twitch.new()
    @data = @twitch.getTopGames()[:body]['top']
  end
end
