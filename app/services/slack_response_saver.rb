class SlackResponseSaver
  def initialize params
    @params = params
  end

  def timestamp
    Time.at(@params.delete(:timestamp).to_f).utc
  end

  def save
    # slack_response = SlackResponse.new(
    #   :team_id => @params[:team_id],
    #   :team_domain => @params[:team_domain],
    #   :service_id => @params[:service_id],
    #   :channel_id => @params[:channel_id],
    #   :channel_name => @params[:channel_name],
    #   :timestamp => @params[:timestamp],
    #   :user_id => @params[:user_id],
    #   :user_name => @params[:user_name],
    #   :text => @params[:text],
    # )
    slack_response = SlackResponse.new
    slack_response.team_id = @params[:team_id]
    slack_response.team_domain = @params[:team_domain]
    slack_response.service_id = @params[:service_id]
    slack_response.channel_id = @params[:channel_id]
    slack_response.channel_name = @params[:channel_name]

    slack_response.user_id = @params[:user_id]
    slack_response.user_name = @params[:user_name]
    slack_response.text = @params[:text]
    slack_response.timestamp = timestamp
    slack_response.save
  end
end