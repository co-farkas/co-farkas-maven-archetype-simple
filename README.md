[![Build Status][travis-ci-shield-img]][travis-ci-shield-link]
[![Latest Stable][bintray-shield-img]][bintray-shield-link]
[![Quality Gate][sonarcloud-shield-img]][sonarcloud-shield-link]
[![Site Docs][github-pages-shield-img]][github-pages-shield-link]

# Farkas Co - Maven - Archetype - Simple Project

The good old [Maven Simple Project Archetype][maven-simple-project-archetype-site] on steroids.

## Table of Content

* [Added Features](#added-features)
* [Archetype Properties](#archetype-properties)
* [Prerequisites](#prerequisites)
* [Usage](#usage)
* [Example Project](#example-project)

## Added Features

* Java 8 configured
* Test libraries:
  * [TestNG][testng] - replaced the default [JUnit][junit].
  * [Hamcrest][hamcrest]
  * [JaCoCo][jacoco]
* Integration
    * [GitHub Pages][github-pages]  - the site report published to [GitHub Pages][github-pages]. See an example here: [Simple Project][co-farkas-example-simple-github-pages].
    * [Travis CI][travis-ci] - project built with [Travis CI][travis-ci].
    * [Bintray][bintray] - stable artifacts deployed to [Bintray][bintray].
    * [Sonarcloud][sonarcloud] - sonar reports published on [Sonarcloud][sonarcloud].
* New generated files:
  * `.gitignore` - see the excluded files here: [.gitignore](/src/main/resources/archetype-resources/.gitignore)
  * `README.md`
    * Title - the same value as described in the project's pom.xml (`<name/>` property).
    * Project description - the same value as described in the project's pom.xml (`<description/>` property).
    * Status shields
    
      | Service                      | Description          | Example                                                           |
      | ---------------------------- | -------------------- | ----------------------------------------------------------------- |
      | [Travis CI][travis-ci]       | Build status.        | [![Build Status][travis-ci-shield-img]][travis-ci-shield-link]    |
      | [Bintray][bintray]           | Latest stable.       | [![Latest Stable][bintray-shield-img]][bintray-shield-link]       |
      | [Sonarcloud][sonarcloud]     | Quality gate status. | [![Quality Gate][sonarcloud-shield-img]][sonarcloud-shield-link]  |
      | [GitHub Pages][github-pages] | Site report.         | [![Site Docs][github-pages-shield-img]][github-pages-shield-link] |

  * `LICENCE` - an [_Apache 2.0_][apache-2.0-licence] license file added to the project. 

* Applied Maven best practices:
  * Default archetype generated version is: `0.0.1-SNAPSHOT`.
  * All plugin/dependency versions described in `pluginManagement`/`dependencyManagement`.
  * All plugin/dependency versions are linked to maven properties.
  * All plugin versions fixed.
  * [More Project Information](https://maven.apache.org/pom.html#More_Project_Information)  described.
    * `name`
    * `description`
    * `url`
    * `organization`
    * `licenses`
    * `developers`
    * `scm`
    * `distributionManagement`
    * `issueManagement`
  * [Versions Maven plugin](https://www.mojohaus.org/versions-maven-plugin/) configured with ruleset.
  * Site report generated with [Fluido Skin](https://maven.apache.org/skins/maven-fluido-skin/). See: [Site report example](https://co-farkas.github.io/co-farkas-example-simple/) 
  * Plugin reports:
    
    | Report                             | Example                                                                                                                  |
    | ---------------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
    | Javadoc API documentation          | [API docs example](https://co-farkas.github.io/co-farkas-example-simple/apidocs/index.html)                              |
    | Test Javadoc API documentation     | [Test API docs example](https://co-farkas.github.io/co-farkas-example-simple/testapidocs/index.html)                     |
    | [JaCoCo][jacoco] coverage report   | [Coverage report example](https://co-farkas.github.io/co-farkas-example-simple/jacoco/index.html)                        |
    | Plugin updates report              | [Plugin updates report example](https://co-farkas.github.io/co-farkas-example-simple/plugin-updates-report.html)         |
    | Dependency updates report          | [Dependency updates report example](https://co-farkas.github.io/co-farkas-example-simple/dependency-updates-report.html) |
   
## Archetype Properties

  | Property name         | Description                                    | Example value                                                    |
  | --------------------- | ---------------------------------------------- | ---------------------------------------------------------------- |
  | `projectName`         | `<name/>` property of the pom.xml              | Simple Project                                                   |
  | `projectDescription`  | `<description/>` property of the pom.xml       | My Java project generated by co-farkas-example-simple archetype. |
  | `urlBase`             | prefix of the `<url/>` property of the pom.xml | https://co-farkas.github.io                                      |
  | `copyrightYear`       | the work's first year of publication           | 2019                                                             |
  | `copyrightOwner`      | the work's copyright owner                     | Mihály Farkas                                                    |
  | `githubAccount`       | your identity on GitHub                        | co-farkas                                                        |

## Prerequisites

Add the below entries to your `~/.m2/settings.xml`:

```xml
<?xml version="1.0" encoding="UTF-8" ?>
<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd">
  <profiles>
    <profile>
      <id>bintray-co-farkas-maven</id>
      <repositories>
        <repository>
          <id>bintray-co-farkas-maven</id>
          <name>bintray-co-farkas-maven</name>
          <url>https://dl.bintray.com/co-farkas/maven</url>
          <snapshots>
            <enabled>false</enabled>
          </snapshots>
        </repository>
      </repositories>
      <pluginRepositories>
        <pluginRepository>
          <id>bintray-co-farkas-maven</id>
          <name>bintray-co-farkas-maven-plugins</name>
          <url>https://dl.bintray.com/co-farkas/maven</url>
          <snapshots>
            <enabled>false</enabled>
          </snapshots>
        </pluginRepository>
      </pluginRepositories>
    </profile>
  </profiles>
  <activeProfiles>
    <activeProfile>bintray-co-farkas-maven</activeProfile>
  </activeProfiles>
</settings>
```

## Usage

Generate your artifact with the archetype. See an example command below:

```bash
mvn archetype:generate \
  -DinteractiveMode=false \
  -DarchetypeGroupId=co-farkas.maven.archetypes \
  -DarchetypeArtifactId=co-farkas-maven-archetype-simple \
  -DarchetypeVersion=0.0.1 \
  -DgroupId=${YOUR_GROUP_ID} \
  -DartifactId=${YOUR_ARTIFACT_ID} \
  -Dpackage=${YOUR_JAVA_PACKAGE} \
  -DcopyrightYear=2019 \
  -DcopyrightOwner=${COPYRIGHT_OWNER} \
  -DgithubAccount=${YOUR_GITHUB_ACCOUNT} \
  -DprojectName=${YOUR_PROJECT_NAME} \
  -DprojectDescription=${YOUR_PROJECT_DESCRIPTION}
```

## Example Project

Find an example project generated by this archetype here: [Farkas Co - Example - Simple Project][co-farkas-example-simple-github]

[maven]:                                 https://maven.apache.org/
[maven-simple-project-archetype-site]:   https://maven.apache.org/archetypes/maven-archetype-simple/
[apache-2.0-licence]:                    https://www.apache.org/licenses/LICENSE-2.0
[github]:                                https://github.com/
[github-pages]:                          https://pages.github.com/
[github-pages-shield-img]:               https://img.shields.io/badge/dynamic/json.svg?label=Docs&colorB=0f80c0&query=$.version&uri=https://co-farkas.github.io/co-farkas-maven-archetype-simple/artifact-info.json
[github-pages-shield-link]:              https://co-farkas.github.io/co-farkas-maven-archetype-simple/
[travis-ci]:                             https://travis-ci.org/
[travis-ci-shield-img]:                  https://img.shields.io/travis/co-farkas/co-farkas-maven-archetype-simple.svg
[travis-ci-shield-link]:                 https://travis-ci.org/co-farkas/co-farkas-maven-archetype-simple
[bintray]:                               https://bintray.com/
[bintray-shield-img]:                    https://api.bintray.com/packages/co-farkas/maven/co-farkas-maven-archetype-simple/images/download.svg
[bintray-shield-link]:                   https://bintray.com/co-farkas/maven/co-farkas-maven-archetype-simple/_latestVersion
[sonarcloud]:                            https://sonarcloud.io/
[sonarcloud-shield-img]:                 https://sonarcloud.io/api/project_badges/measure?project=co-farkas.maven.archetypes%3Aco-farkas-maven-archetype-simple&metric=alert_status
[sonarcloud-shield-link]:                https://sonarcloud.io/dashboard?id=co-farkas.maven.archetypes%3Aco-farkas-maven-archetype-simple
[eclipse]:                               https://www.eclipse.org/
[intellij-idea]:                         https://www.jetbrains.com/idea/
[junit]:                                 https://junit.org/
[testng]:                                https://testng.org/
[hamcrest]:                              http://hamcrest.org/
[jacoco]:                                https://www.eclemma.org/jacoco/
[co-farkas-example-simple-github]:       https://github.com/co-farkas/co-farkas-example-simple/
[co-farkas-example-simple-github-pages]: https://co-farkas.github.io/co-farkas-example-simple/
