# govuk_template_jar

JAR version of govuk_template self-hosted on github

## How to build / deploy

1. Check out this repository, this will pull the latest version of the govuk_template repository as a submodule.
2. Configure Maven to access github. Add the following to `~/.m2/settings.xml`:

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

3. Run `mvn clean deploy`. This uploads the most recent assets as a JAR to github. 

## How to use

Add the following to your pom.xml:

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