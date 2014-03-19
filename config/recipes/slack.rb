#Slack Variables
set :slack_channel,     "Channel"
set :slack_key,         "Key"
set :slack_user,        "Bot"
set :slack_emoji,       ":turtle:"

#This variable can be overwrite in multistage configurations file
set :domain,            "www.website.com"

namespace :slack do
  task :update do
    print "Calling SLACK ..."
    set :istr, "curl -X POST --data 'payload={\"channel\": \"#" + slack_channel + "\", \"username\": \"" + slack_user + "\", \"text\": \"Deployed on <http://" + domain + ">.\", \"icon_emoji\": \"" + slack_emoji + "\"}' https://gnvpartners.slack.com/services/hooks/incoming-webhook?token=" + slack_key
    output = run_locally istr
    # output = istr
    print output
  end
end
