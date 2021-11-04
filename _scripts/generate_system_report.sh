#!/usr/bin/env bash

set -e
set -x

REPORT_FOLDER="$(mktemp -d)"
REPORT_BRANCH_NAME="gen2-system-reports-w$(date +%W)"

envman add --key REPORT_BRANCH_NAME --value "${REPORT_BRANCH_NAME}"
COMMIT_MESSAGE="[CI] System report: ${BITRISEIO_STACK_ID}"

git clone https://"${GITHUB_TOKEN}@github.com/bitrise-io/bitrise.io.git ${REPORT_FOLDER}"/
pushd "${REPORT_FOLDER}"
git checkout "${REPORT_BRANCH_NAME}" || git checkout -b "${REPORT_BRANCH_NAME}"
popd
mkdir -p "$REPORT_FOLDER/system_reports/"
./system_report.sh > report.log
mv report.log "$REPORT_FOLDER/system_reports/$BITRISEIO_STACK_ID.log"
pushd "${REPORT_FOLDER}"

# unset -e so git push can fail
set +e
git add . && git commit -m "${COMMIT_MESSAGE}"

PUSH_SUCCESS=1
while [ $PUSH_SUCCESS != 0 ]; do
  git pull origin "${REPORT_BRANCH_NAME}"
  git push origin "${REPORT_BRANCH_NAME}" &> /dev/null
  PUSH_SUCCESS=$?
done
popd
