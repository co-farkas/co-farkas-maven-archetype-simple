# Farkas Co - Maven - Archetype - Simple Project

The good old [Maven Simple Project Archetype][maven-simple-project-archetype-site] on steroids.

## Usage

```bash
mvn archetype:generate \
  -DarchetypeGroupId=co-farkas.maven.archetypes \
  -DarchetypeArtifactId=co-farkas-maven-archetype-simple \
  -DarchetypeVersion=0.0.1-SNAPSHOT
```

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
  * `LICENCE` _(Apache 2.0)_

[maven-simple-project-archetype-site]: https://maven.apache.org/archetypes/maven-archetype-simple/
[maven]:                               https://maven.apache.org/
[eclipse]:                             https://www.eclipse.org/
[intellij-idea]:                       https://www.jetbrains.com/idea/
