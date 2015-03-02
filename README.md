# govuk_template_jar

JAR version of govuk_template self-hosted on github

## How to build / deploy

1. Check out this repository, this will pull the latest version of the govuk_template repository as a submodule.
2. Configure Maven to access github. Add the following to `~/.m2/settings.xml`:
3. Run `mvn clean deploy`. This uploads the most recent assets as a JAR to github. 

## How to use

Add the following to your pom.xml: