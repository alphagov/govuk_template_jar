#!/bin/sh

cd module/govuk_template && bundle exec rake build:mustache && cd ../..
mkdir -p target/generated-resources/uk/gov/template
tar xvzf ./module/govuk_template/pkg/mustache_govuk_template-0.12.0.tgz -C target/generated-resources/uk/gov/template --strip 1