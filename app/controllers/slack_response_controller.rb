class SlackResponseController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def create
    SlackResponseSaver.new(params).save
    render nothing: true
  end

end