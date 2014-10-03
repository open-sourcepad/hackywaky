class SlackResponseController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    SlackResponseSaver.new(permitted_params).save
    render nothing: true
  end

  private

  def permitted_params
    params.require(:team_id, :team_domain, :service_id, :channel_id, :channel_name, :timestamp, :user_id, :user_name, :text).permit!
  end

end