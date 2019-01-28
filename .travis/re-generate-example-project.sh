#!/usr/bin/env bash
set -e

ARCHETYPE_VERSION=$(mvn --non-recursive --quiet exec:exec -Dexec.executable=echo -Dexec.args='${project.version}')

echo "*******************************"
echo "ARCHETYPE_VERSION: ${ARCHETYPE_VERSION}"
echo "*******************************"

pushd target

echo "*******************************"
echo "pwd (after target): $(pwd)"
echo "*******************************"

mvn archetype:generate \
  -DinteractiveMode=false \
  -DarchetypeGroupId=co-farkas.maven.archetypes \
  -DarchetypeArtifactId=co-farkas-maven-archetype-simple \
  -DarchetypeVersion=${ARCHETYPE_VERSION} \
  -DgroupId=co-farkas.examples \
  -DartifactId=co-farkas-example-maven-simple \
  -Dpackage=co.farkas.example.maven.simple \
  -DcopyrightYear=2019 \
  -DcopyrightOwner="Mihály Farkas"
popd

echo "*******************************"
echo "pwd (after popd): $(pwd)"
echo "*******************************"


echo "*******************************"
echo "target/co-farkas-maven-archetype-simple"
echo "*******************************"
echo ls -al target/co-farkas-maven-archetype-simple
echo "*******************************"

git clone \
  --depth=1 \
  https://co-farkas:${GITHUB_TOKEN}@github.com/co-farkas/co-farkas-example-maven-simple.git \
  target/co-farkas-example-maven-simple.git

mv target/co-farkas-example-maven-simple.git/.git target/co-farkas-example-maven-simple/

pushd target/co-farkas-example-maven-simple

echo "*******************************"
echo "pwd (after git dir): $(pwd)"
echo "*******************************"

git add . -A
echo "*******************************"
git status
echo "*******************************"


CHANGED=$(git diff-index --name-only HEAD --)

if [[ -n "$CHANGED" ]]; then
  git commit -m "Project re-generated"
  git push
fi

popd
