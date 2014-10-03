class Api < Grape::API

  get 'ping' do
    ''
  end

  post 'slack_response' do
    SlackResponseSaver.new(params).save
    ''
  end
end