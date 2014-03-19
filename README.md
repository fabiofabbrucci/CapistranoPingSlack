Capistrano Ping Slack
=====================

A simple recipe for Slack integration

# Installation

1. Create `config/recipes` folder in your root
2. Copy our [slack.rb](config/recipes/slack.rb) recipe inside it
3. Add `load 'config/recipes/slack.rb'` in your `Capfile`
4. Run `cap -vT` and check if `slack:update` task exists
5. Add `slack:update` as to a capistrano hook

# Usage

You need to configure those variables:

```ruby
#Slack Variables
set :slack_channel,     "Channel"
set :slack_key,         "Key"
set :slack_user,        "Bot"
set :slack_emoji,       ":turtle:"
#This variable can be overwrite in multistage configurations file
set :domain,            "www.website.com"
```

#### slack_channel
It is the channel of slack where you want to post messages

#### slack_user
It is the name of your Bot

#### slack_emoji
It is the emoji of your Bot. [Here a full list](http://www.emoji-cheat-sheet.com/)

#### slack_key
It is the key token.
In order to get your key you need to:

1. Login to your *htpp://your_domain.slack.com* and go to services list
2. Add a new service. Its name is **Incoming WebHooks**. It allows you to post on slack through curl.
2. Inside the **Instructions for creating Incoming WebHooks** tab you can find the **token** in a curl example. **Take it!**
3. Copy it here, in your `slack_key` variable

In order to test your key, copy the curl example provided and run it in your shell.
Eg.:
```
curl -X POST --data 'payload={"channel": "#general", "username": "webhookbot", "text": "Ttext", "icon_emoji": ":ghost:"}' https://your_domain.slack.com/services/hooks/incoming-webhook?token=123456789
```

#### domain
This variable is already provided by Capistrano.
You can redefine it or take the default value.

## Need help?
Contact me or open an issue.
Feel free to fork and propose any kind of changes.

# Special thanks
To [GNV](http://gnvpartners.com), which is giving me the chance to have fun with frontend development and system integration. With love.