#!/usr/bin/env bash

ARTIFACT_NAME="co-farkas-example-maven-simple"
GIT_REMOTE="https://co-farkas:${GITHUB_TOKEN}@github.com/co-farkas/${ARTIFACT_NAME}.git"

git clone ${GIT_REMOTE} target/${ARTIFACT_NAME}.git
mv target/${ARTIFACT_NAME}.git/.git target/test-classes/projects/it-basic/project/${ARTIFACT_NAME}/

pushd target/test-classes/projects/it-basic/project/${ARTIFACT_NAME}/
git add . -A
if [[ -n "$(git diff-index --name-only HEAD --)" ]]; then
  git commit -m "Project re-generated"
  git push
fi
popd
