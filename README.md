# govuk_template_jar

[WebJar](http://www.webjars.org/) version of govuk_template assets self-hosted on github.

## How to build / deploy

1. Ensure you have a Shell (sh), Git, Ruby, Bundler and Maven installed.
2. Check out this repository, this will pull the latest version of the govuk_template repository as a submodule.
3. Configure Maven to access github. Add the following to `~/.m2/settings.xml`:

```xml
<settings>
  <servers>
    <server>
      <id>github</id>
      <username>YOUR_USERNAME</username>
      <password>YOUR_PASSWORD</password>
    </server>
  </servers>
</settings>
```

4. Set a version for the release in the `pom.xml`.
5. Run `mvn clean deploy`. This uploads the most recent assets as a JAR to github. 

## How to use

For Maven, add the following to your `pom.xml`:

```xml
<repositories>
    <repository>
        <id>govuk_template</id>
        <url>https://raw.githubusercontent.com/alphagov/govuk_template_jar/mvn-repo/</url>
        <snapshots>
            <enabled>true</enabled>
            <updatePolicy>always</updatePolicy>
        </snapshots>
    </repository>
</repositories>
```

and this as a dependency:

```xml
<dependency>
    <groupId>uk.gov.template</groupId>
    <artifactId>template</artifactId>
    <version>0.12.0</version>
</dependency>
```

For SBT/Play, add the following to your `build.sbt`:

```
resolvers ++= Seq(
  "Gov.UK WebJar Repo" at "https://raw.github.com/alphagov/govuk_template_jar/mvn-repo/"
)
```

Then the dependency and (optionally) the Play WebJar helper:

```
"org.webjars" %% "webjars-play" % "2.3.0-2"
"org.webjars" % "govuk_template" % "0.12.0"
```

##Example of usage in PlayFramework project

1. Add the following line to your routes file
```GET     /webjars/*file                        controllers.WebJarAssets.at(file)```
2. In your *.scala.html view, you can reference any assets by:
```"@routes.WebJarAssets.at(WebJarAssets.locate("govuk_template", "PATH_TO_YOUR_FILE"))"```
