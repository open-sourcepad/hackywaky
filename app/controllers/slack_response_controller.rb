class SlackResponseController < ApplicationController
  def create
    SlackResponseSaver.new(params).save
    render nothing: true
  end

end