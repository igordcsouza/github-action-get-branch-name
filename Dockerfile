FROM alpine:latest

LABEL "maintainer"="Igor Souza <igordcsouza@gmail.com>"

LABEL "com.github.actions.name"="Get Branch Name"
LABEL "com.github.actions.description"="Set a environment variable called BRANCH_NAME with the current branch name"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="red"
LABEL "repository"="https://github.com/igordcsouza/github-action-get-branch-name"
LABEL "homepage"="https://github.com/igordcsouza/github-action-get-branch-name"

RUN	apk add --no-cache \
    bash \
    ca-certificates \
    curl \
    jq

RUN apk --update --no-cache add jq curl bash

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
