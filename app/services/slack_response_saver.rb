class SlackResponseSaver
  def initialize params
    @params = params
  end

  def timestamp
    Time.at(@params.delete(:timestamp).to_f).utc
  end

  def save
    slack_response = SlackResponse.new(@params)
    slack_response.timestamp = timestamp
    slack_response.save
  end
end