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
Is the channel of slack where you want it posts messages

#### slack_user
Is the name of your Bot

#### slack_emoji
Is the name of your Bot. [Here a full list](http://www.emoji-cheat-sheet.com/)

#### slack_key
Is the key.
To get your key you need to:

1. Login to your *htpp://your_domain.slack.com* and go to services list
2. Add a new service. Its name is **Incoming WebHooks**. It allows you to post to slack through curl.
2. Inside the tab for **Instructions for creating Incoming WebHooks** you can find the **token** in an example of curl. **Get it!**
3. Copy it here, in your `slack_key` variable

To test it, copy the example of curl syntax provided by slack and run it in you shell.
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
To [GNV](http://gnvpartners.com) that's allow me in having fun with with frontend and system integration.