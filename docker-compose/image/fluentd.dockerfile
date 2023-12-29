FROM --platform=arm64 fluent/fluentd:v1.16.2-debian-1.1
USER root
RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-document", "--version", "5.0.3"]
USER fluent
