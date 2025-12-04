# docker-issue-redirect

A simple service for redirecting issues to GitHub if they've been migrated or Jira if they haven't been.

The script [redirect.sh](./bin/redirects.sh) takes a file [jira_keys_to_github_ids.txt](./mappings/jira_keys_to_github_ids.txt) and generated nginx redirect directives.

A default rule will redirect any unknown issue IDs to Jira.

## API

- `GET/issue/:jira_key` - Redirects to the corresponding GitHub issue, if found. Otherwise to Jira prefixing it with JENKINS-.

## Adding more

To add more Jira redirects send a pull request to [jira_keys_to_github_ids.txt](./mappings/jira_keys_to_github_ids.txt).
