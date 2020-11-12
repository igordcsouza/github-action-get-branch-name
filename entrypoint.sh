#!/bin/bash
set -e
set -o pipefail

if [[ -n "$TOKEN" ]]; then
	GITHUB_TOKEN=$TOKEN
fi

if [[ -z "$GITHUB_TOKEN" ]]; then
	echo "Set the GITHUB_TOKEN env variable."
	exit 1
fi

URI=https://api.github.com
API_VERSION=v3
API_HEADER="Accept: application/vnd.github.${API_VERSION}+json"
AUTH_HEADER="Authorization: token ${GITHUB_TOKEN}"

NO_BRANCH_DELETED_EXIT_CODE=${NO_BRANCH_DELETED_EXIT_CODE:-0}

main(){
	action=$(jq --raw-output .action "$GITHUB_EVENT_PATH")
	merged=$(jq --raw-output .pull_request.merged "$GITHUB_EVENT_PATH")

	echo "DEBUG -> action: $action merged: $merged"


	ref=$(jq --raw-output .pull_request.head.ref "$GITHUB_EVENT_PATH")
	owner=$(jq --raw-output .pull_request.head.repo.owner.login "$GITHUB_EVENT_PATH")
	repo=$(jq --raw-output .pull_request.head.repo.name "$GITHUB_EVENT_PATH")


	echo "BRANCH_NAME=${ref}" >> $GITHUB_ENV

	exit 0
}

main "$@"
