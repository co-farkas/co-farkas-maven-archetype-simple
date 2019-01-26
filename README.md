[![Build Status][travis-ci-shield-img]][travis-ci-shield-link]

# Farkas Co - Maven - Archetype - Simple Project

The good old [Maven Simple Project Archetype][maven-simple-project-archetype-site] on steroids.

## Added Features

* Java 8 support
* Default generated version is: `0.0.1-SNAPSHOT`
* All plugin/dependency versions are linked to maven properties
* New properties: 
  * `projectName` - `<name/>` property of the pom.xml
  * `projectDescription` - `<description/>` property of the pom.xml
  * `urlBase` - prefix of the `<url/>` property of the pom.xml
* New generated files:
  * `.gitignore`
    * [Maven][maven] files ignored
    * [Eclipse][eclipse] files ignored
    * [IntelliJ IDEA][intellij-idea] files ignored
  * `README.md`
    * Title (project name)
    * Project description
    * [Travis CI][travis-ci] build status shield
  * `LICENCE` _(Apache 2.0)_
 * Integration
   * [Travis CI][travis-ci]

## Usage

```bash
mvn archetype:generate \
  -DarchetypeGroupId=co-farkas.maven.archetypes \
  -DarchetypeArtifactId=co-farkas-maven-archetype-simple \
  -DarchetypeVersion=0.0.1-SNAPSHOT
```

[maven-simple-project-archetype-site]: https://maven.apache.org/archetypes/maven-archetype-simple/
[maven]:                               https://maven.apache.org/
[eclipse]:                             https://www.eclipse.org/
[intellij-idea]:                       https://www.jetbrains.com/idea/
[travis-ci]:                           https://travis-ci.org/
[travis-ci-shield-img]:                https://img.shields.io/travis/co-farkas/co-farkas-maven-archetype-simple.svg
[travis-ci-shield-link]:               https://travis-ci.org/co-farkas/co-farkas-maven-archetype-simple
