class Api < Grape::API

  get 'ping' do
    ''
  end
  params do 
    requires :team_id
    requires :team_domain
    requires :service_id
    requires :channel_id
    requires :channel_name
    requires :timestamp
    requires :user_id
    requires :user_name
    requires :text
  end
  post 'slack_response' do
    SlackResponseSaver.new( declared(params) ).save
  end
end