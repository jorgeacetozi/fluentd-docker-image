# Fluentd Docker Image

Very simple Fluentd Docker image based on `fluent/fluentd:v0.14.19`.

## Plugins Installed

- **fluent-plugin-concat**: Fluentd Filter plugin to concatenate multiline log separated in multiple events
- **fluent-plugin-gelf-hs**: Fluentd GELF output and formatter plugins
- **fluent-plugin-s3**: Fluentd S3 output plugin to store records into the Amazon S3
