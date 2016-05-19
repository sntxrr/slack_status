# slack_presence

`🚪 🏃 || 🎾 💻`

Set yourself here or away across multiple Slack teams

## Why

Sometimes it's nice to flip yourself to away when you want to go dark and work on a project but keep Slack open in the background. When you're on multiple teams doing that on a team by team basis is tedious.

## How

Create a `.env` file with a slack token for each team you are on as comma separated values:

```
SLACK_TOKENS=xoxp-XXXXXXXXXX-XXXXXXXXXX-XXXXXXXXXXX-XXXXXXXXXX,xoxp-YYYYYYYYYY-YYYYYYYYYY-YYYYYYYYYYY-YYYYYYYYYY,xoxp-ZZZZZZZZZZ-ZZZZZZZZZZZ-ZZZZZZZZZZZ-ZZZZZZZZZZ
```

Run `ruby slack_presence.rb <away|auto>`
