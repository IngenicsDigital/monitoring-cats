# Monitoring Cats

This project shows how monitoring of a Spring Boot Application and the system around it can be done.
For the easy installation docker containers are used to run the needed software.

To get the steps take a look at the commits of this project. They guide you through the process step-by-step.
Take note that on some commits there is more text in the commit message, make sure you expand the message to see the whole text.

## Project Overview

The Project is small Spring Boot application which serves a cat image on http://localhost:8080/cat.jpg.
There is also a test to demonstrate the testing scenario.
A `Dockerfile` is also included to package the application in a docker environment for easier demonstration.

## Project execution

To execute the application for testing, execute `./gradlew bootRun` on the commandline.

### Build the Dockerfile

1. Run `./gradlew bootJar`
2. Run `docker-compose build`

## Documentation

* [Spring Boot Actuators](https://docs.spring.io/spring-boot/docs/current/reference/html/production-ready-features.html#production-ready-metrics)
* [Prometues Scrape config docs](https://prometheus.io/docs/prometheus/latest/configuration/configuration/#scrape_config)
* [Grafana config docs](https://grafana.com/docs/grafana/latest/administration/configuration/)
* [Glances Repository](https://github.com/nicolargo/glances)
* [Loki Getting Started](https://grafana.com/docs/loki/latest/getting-started/get-logs-into-loki/)
* [Promtail Docs (log file reader)](https://grafana.com/docs/loki/latest/clients/promtail/configuration/)
* [Loki Docker Logging driver docs](https://grafana.com/docs/loki/latest/clients/docker-driver/)
