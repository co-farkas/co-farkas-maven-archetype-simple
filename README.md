[![Build Status][travis-ci-shield-img]][travis-ci-shield-link]
[![Latest Stable][bintray-shield-img]][bintray-shield-link]
[![Quality Gate][sonarcloud-shield-img]][sonarcloud-shield-link]
[![Site Docs][github-pages-shield-img]][github-pages-shield-link]

# Farkas Co - Maven - Archetype - Simple Project

The good old [Maven Simple Project Archetype][maven-simple-project-archetype-site] on steroids.

## Added Features

* Java 8
* Default generated version is: `0.0.1-SNAPSHOT`
* All plugin/dependency versions are linked to maven properties
* New properties: 
  * `projectName` - `<name/>` property of the pom.xml
  * `projectDescription` - `<description/>` property of the pom.xml
  * `urlBase` - prefix of the `<url/>` property of the pom.xml
  * `copyrightYear`
  * `copyrightOwner`
  * `githubAccount`
* New generated files:
  * `.gitignore`
    * [Maven][maven] files ignored
    * [Eclipse][eclipse] files ignored
    * [IntelliJ IDEA][intellij-idea] files ignored
  * `README.md`
    * Title (project name)
    * Project description
    * [Travis CI][travis-ci] build status shield
    * [Bintray][bintray] latest stable shield
    * [Sonarcloud][sonarcloud] quality gate shield
  * `LICENCE` _(Apache 2.0)_
* Unit testing
  * [TestNG][testng]
  * [Hamcrest][hamcrest]
  * [JaCoCo][jacoco]
* Site reports
  * Javadoc API documentation.
  * Test Javadoc API documentation.
  * JaCoCo Coverage Report.
  * Provides details of the plugins used by this project which have newer versions available.
  * Provides details of the dependencies which have updated versions available.
* Integration
    * [GitHub][github]
    * [GitHub Pages][github-pages]
    * [Travis CI][travis-ci]
    * [Bintray][bintray]
    * [Sonarcloud][sonarcloud]

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
[bintray]:                             https://bintray.com/
[bintray-shield-img]:                  https://api.bintray.com/packages/co-farkas/maven/co-farkas-maven-archetype-simple/images/download.svg
[bintray-shield-link]:                 https://bintray.com/co-farkas/maven/co-farkas-maven-archetype-simple/_latestVersion
[sonarcloud-shield-img]:               https://sonarcloud.io/api/project_badges/measure?project=co-farkas.maven.archetypes%3Aco-farkas-maven-archetype-simple&metric=alert_status
[sonarcloud-shield-link]:              https://sonarcloud.io/dashboard?id=co-farkas.maven.archetypes%3Aco-farkas-maven-archetype-simple
[sonarcloud]:                          https://sonarcloud.io/
[github]:                              https://github.com/
[github-pages]:                        https://pages.github.com/
[github-pages-shield-img]:             https://img.shields.io/badge/dynamic/json.svg?label=Docs&colorB=0f80c0&query=$.version&uri=https://co-farkas.github.io/co-farkas-maven-archetype-simple/artifact-info.json
[github-pages-shield-link]:            https://co-farkas.github.io/co-farkas-maven-archetype-simple/
[testng]:                              https://testng.org/
[hamcrest]:                            http://hamcrest.org/
[jacoco]:                              https://www.eclemma.org/jacoco/
