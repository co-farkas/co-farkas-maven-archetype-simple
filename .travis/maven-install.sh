#!/usr/bin/env bash

mvn install sonar:sonar \
  -Dsonar.host.url=https://sonarcloud.io \
  -Dsonar.organization=co-farkas-github \
  -Dsonar.projectKey=co-farkas_co-farkas-maven-archetype-simple \
  -Dsonar.login=${SONAR_TOKEN} \
  -Dsonar.pullrequest.base=${TRAVIS_BRANCH} \
  -Dsonar.pullrequest.branch=${TRAVIS_PULL_REQUEST_BRANCH} \
  -Dsonar.pullrequest.key=${TRAVIS_PULL_REQUEST} \
  -Dsonar.pullrequest.provider=GitHub \
  -Dsonar.pullrequest.github.repository=co-farkas/co-farkas-maven-archetype-simple
