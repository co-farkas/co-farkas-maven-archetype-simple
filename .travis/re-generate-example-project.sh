#!/usr/bin/env bash

ARCHETYPE_VERSION=$(mvn --non-recursive --quiet exec:exec -Dexec.executable=echo -Dexec.args='${project.version}')

pushd target
mvn archetype:generate \
  -DinteractiveMode=false \
  -DarchetypeGroupId=co-farkas.maven.archetypes \
  -DarchetypeArtifactId=co-farkas-maven-archetype-simple \
  -DarchetypeVersion=${ARCHETYPE_VERSION} \
  -DgroupId=co-farkas.examples \
  -DartifactId=co-farkas-example-maven-simple \
  -Dpackage=co.farkas.example.maven.simple \
  -Dbasedir=target
popd

git clone \
  --depth=1 \
  https://co-farkas:${GITHUB_TOKEN}@github.com/co-farkas/co-farkas-example-maven-simple.git \
  target/co-farkas-example-maven-simple.git
mv target/co-farkas-example-maven-simple.git/.git target/co-farkas-example-maven-simple/

pushd target/co-farkas-example-maven-simple
git add . -A
git status
git commit -m "Project re-generated"
git push

