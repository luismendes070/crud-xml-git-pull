#!/bin/bash
mvn clean install -P spring-header
mvn spring:boot:run
mvn test
mvn prettier:check