# slack status

Persist status across all your Slack workspaces

## Why

If you work or chat across multiple Slack workspaces, managing your status across each workspace individually is tedious. This replicates your status across all workspaces you define.

## How

    cp tokens.example tokens
    cp statuses.example statuses

Edit and replace your `tokens` file values with [actual tokens](https://api.slack.com/custom-integrations/legacy-tokens) and edit and replace your `statuses` file with your own status messages and emoji.

    ruby status.rb here|away meeting|busy
