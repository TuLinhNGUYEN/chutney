# language: en
Feature: Engine tasks exposition

    Scenario: All loaded tasks can be asked for
        When request engine for all declared tasks
        Then the following tasks are present in response
            | amqp-basic-consume                | queue-name,java.lang.String nb-messages,java.lang.Integer selector,java.lang.String timeout,java.lang.String ack,java.lang.Boolean                            |
            | amqp-basic-get                    | queue-name,java.lang.String                                                                                                                                   |
            | amqp-basic-publish                | exchange-name,java.lang.String routing-key,java.lang.String headers,java.util.Map properties,java.util.Map payload,java.lang.String                           |
            | amqp-clean-queues                 | queue-names,java.util.List                                                                                                                                    |
            | amqp-create-bound-temporary-queue | exchange-name,java.lang.String routing-key,java.lang.String queue-name,java.lang.String                                                                       |
            | amqp-delete-queue                 | queue-name,java.lang.String                                                                                                                                   |
            | amqp-unbind-queue                 | exchange-name,java.lang.String routing-key,java.lang.String queue-name,java.lang.String                                                                       |
            | assert                            | asserts,java.util.List                                                                                                                                        |
            | json-assert                       | document,java.lang.String expected,java.util.Map                                                                                                              |
            | json-compare                      | document1,java.lang.String document2,java.lang.String comparingPaths,java.util.Map                                                                            |
            | json-validation                   | json,java.lang.String schema,java.lang.String                                                                                                                 |
            | string-assert                     | document,java.lang.String expected,java.lang.String                                                                                                           |
            | xml-assert                        | document,java.lang.String expected,java.util.Map                                                                                                              |
            | xsd-validation                    | xml,java.lang.String xsd,java.lang.String                                                                                                                     |
            | context-put                       | entries,java.util.Map                                                                                                                                         |
            | debug                             | filters,java.util.List                                                                                                                                         |
            | fail                              |                                                                                                                                                               |
            | sleep                             | duration,java.lang.String                                                                                                                                     |
            | success                           |                                                                                                                                                               |
            | groovy                            | script,java.lang.String parameters,java.util.Map                                                                                                              |
            | http-delete                       | uri,java.lang.String headers,java.util.Map timeout,java.lang.String                                                                                           |
            | http-get                          | uri,java.lang.String headers,java.util.Map timeout,java.lang.String                                                                                           |
            | http-post                         | uri,java.lang.String body,java.lang.String headers,java.util.Map timeout,java.lang.String                                                                     |
            | http-put                          | uri,java.lang.String body,java.lang.String headers,java.util.Map timeout,java.lang.String                                                                     |
            | https-listener                    | https-server,com.github.tomakehurst.wiremock.WireMockServer uri,java.lang.String verb,java.lang.String expected-message-count,java.lang.String                |
            | https-server-start                | port,java.lang.String truststore-path,java.lang.String truststore-password,java.lang.String keystore-path,java.lang.String keystore-password,java.lang.String |
            | https-server-stop                 | https-server,com.github.tomakehurst.wiremock.WireMockServer                                                                                                   |
            | jms-clean-queue                   | destination,java.lang.String selector,java.lang.String bodySelector,java.lang.String browserMaxDepth,java.lang.Integer timeOut,java.lang.String               |
            | jms-listener                      | destination,java.lang.String selector,java.lang.String bodySelector,java.lang.String browserMaxDepth,java.lang.Integer timeOut,java.lang.String               |
            | jms-sender                        | destination,java.lang.String body,java.lang.String headers,java.util.Map                                                                                      |
            | kafka-basic-publish               | topic,java.lang.String headers,java.util.Map payload,java.lang.String                                                                                         |
            | kafka-basic-consume               | topic,java.lang.String group,java.lang.String properties,java.util.Map nb-messages,java.lang.Integer selector,java.lang.String timeout,java.lang.String       |
            | mongo-count                       | collection,java.lang.String query,java.lang.String                                                                                                            |
            | mongo-delete                      | collection,java.lang.String query,java.lang.String                                                                                                            |
            | mongo-find                        | collection,java.lang.String query,java.lang.String limit,java.lang.Integer                                                                                    |
            | mongo-insert                      | collection,java.lang.String document,java.lang.String                                                                                                         |
            | mongo-list                        |                                                                                                                                                               |
            | mongo-update                      | collection,java.lang.String filter,java.lang.String update,java.lang.String arrayFilters,java.util.List                                                       |
            | selenium-click                    | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String by,java.lang.String wait,java.lang.Integer                                                 |
            | selenium-close                    | web-driver,org.openqa.selenium.WebDriver                                                                                                                      |
            | selenium-driver-init              | driverPath,java.lang.String browserPath,java.lang.String browser,java.lang.String                                                                             |
            | selenium-get-attribute            | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String by,java.lang.String wait,java.lang.Integer attribute,java.lang.String                      |
            | selenium-get                      | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String value,java.lang.String                                                                     |
            | selenium-get-text                 | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String by,java.lang.String wait,java.lang.Integer                                                 |
            | selenium-hover-then-click         | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String by,java.lang.String wait,java.lang.Integer                                                 |
            | selenium-quit                     | web-driver,org.openqa.selenium.WebDriver                                                                                                                      |
            | selenium-remote-driver-init       | hub,java.lang.String browser,java.lang.String                                                                                                                 |
            | selenium-screen-shot              | web-driver,org.openqa.selenium.WebDriver                                                                                                                      |
            | selenium-scroll-to                | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String by,java.lang.String wait,java.lang.Integer                                                 |
            | selenium-send-keys                | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String by,java.lang.String value,java.lang.String wait,java.lang.Integer                          |
            | selenium-set-browser-size         | web-driver,org.openqa.selenium.WebDriver width,java.lang.Integer height,java.lang.Integer                                                                     |
            | selenium-switch-to                | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String by,java.lang.String wait,java.lang.Integer switchType,java.lang.String                     |
            | selenium-wait                     | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String by,java.lang.String value,java.lang.String wait,java.lang.Integer                          |
            | sql                               | statements,java.util.List                                                                                                                                     |
            | ssh-client                        | commands,java.util.List                                                                                                                                       |

    Scenario Outline: A loaded task properties can be asked for by identifier
        When request engine for task <task-id>
        Then its <inputs> are present in response
        Examples:
            | task-id                           | inputs                                                                                                                                                        |
            | amqp-basic-consume                | queue-name,java.lang.String nb-messages,java.lang.Integer selector,java.lang.String timeout,java.lang.String ack,java.lang.Boolean                            |
            | amqp-basic-get                    | queue-name,java.lang.String                                                                                                                                   |
            | amqp-basic-publish                | exchange-name,java.lang.String routing-key,java.lang.String headers,java.util.Map properties,java.util.Map payload,java.lang.String                           |
            | amqp-clean-queues                 | queue-names,java.util.List                                                                                                                                    |
            | amqp-create-bound-temporary-queue | exchange-name,java.lang.String routing-key,java.lang.String queue-name,java.lang.String                                                                       |
            | amqp-delete-queue                 | queue-name,java.lang.String                                                                                                                                   |
            | amqp-unbind-queue                 | exchange-name,java.lang.String routing-key,java.lang.String queue-name,java.lang.String                                                                       |
            | assert                            | asserts,java.util.List                                                                                                                                        |
            | json-assert                       | document,java.lang.String expected,java.util.Map                                                                                                              |
            | json-compare                      | document1,java.lang.String document2,java.lang.String comparingPaths,java.util.Map                                                                            |
            | json-validation                   | json,java.lang.String schema,java.lang.String                                                                                                                 |
            | string-assert                     | document,java.lang.String expected,java.lang.String                                                                                                           |
            | xml-assert                        | document,java.lang.String expected,java.util.Map                                                                                                              |
            | xsd-validation                    | xml,java.lang.String xsd,java.lang.String                                                                                                                     |
            | context-put                       | entries,java.util.Map                                                                                                                                         |
            | debug                             | filters,java.util.List                                                                                                                                         |
            | fail                              |                                                                                                                                                               |
            | sleep                             | duration,java.lang.String                                                                                                                                     |
            | success                           |                                                                                                                                                               |
            | groovy                            | script,java.lang.String parameters,java.util.Map                                                                                                              |
            | http-delete                       | uri,java.lang.String headers,java.util.Map timeout,java.lang.String                                                                                           |
            | http-get                          | uri,java.lang.String headers,java.util.Map timeout,java.lang.String                                                                                           |
            | http-post                         | uri,java.lang.String body,java.lang.String headers,java.util.Map timeout,java.lang.String                                                                     |
            | http-put                          | uri,java.lang.String body,java.lang.String headers,java.util.Map timeout,java.lang.String                                                                     |
            | https-listener                    | https-server,com.github.tomakehurst.wiremock.WireMockServer uri,java.lang.String verb,java.lang.String expected-message-count,java.lang.String                |
            | https-server-start                | port,java.lang.String truststore-path,java.lang.String truststore-password,java.lang.String keystore-path,java.lang.String keystore-password,java.lang.String |
            | https-server-stop                 | https-server,com.github.tomakehurst.wiremock.WireMockServer                                                                                                   |
            | jms-clean-queue                   | destination,java.lang.String selector,java.lang.String bodySelector,java.lang.String browserMaxDepth,java.lang.Integer timeOut,java.lang.String               |
            | jms-listener                      | destination,java.lang.String selector,java.lang.String bodySelector,java.lang.String browserMaxDepth,java.lang.Integer timeOut,java.lang.String               |
            | jms-sender                        | destination,java.lang.String body,java.lang.String headers,java.util.Map                                                                                      |
            | kafka-basic-publish               | topic,java.lang.String headers,java.util.Map payload,java.lang.String                                                                                         |
            | kafka-basic-consume               | topic,java.lang.String group,java.lang.String properties,java.util.Map nb-messages,java.lang.Integer selector,java.lang.String timeout,java.lang.String       |
            | mongo-count                       | collection,java.lang.String query,java.lang.String                                                                                                            |
            | mongo-delete                      | collection,java.lang.String query,java.lang.String                                                                                                            |
            | mongo-find                        | collection,java.lang.String query,java.lang.String limit,java.lang.Integer                                                                                    |
            | mongo-insert                      | collection,java.lang.String document,java.lang.String                                                                                                         |
            | mongo-list                        |                                                                                                                                                               |
            | mongo-update                      | collection,java.lang.String filter,java.lang.String update,java.lang.String arrayFilters,java.util.List                                                       |
            | selenium-click                    | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String by,java.lang.String wait,java.lang.Integer                                                 |
            | selenium-close                    | web-driver,org.openqa.selenium.WebDriver                                                                                                                      |
            | selenium-driver-init              | driverPath,java.lang.String browserPath,java.lang.String browser,java.lang.String                                                                             |
            | selenium-get-attribute            | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String by,java.lang.String wait,java.lang.Integer attribute,java.lang.String                      |
            | selenium-get                      | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String value,java.lang.String                                                                     |
            | selenium-get-text                 | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String by,java.lang.String wait,java.lang.Integer                                                 |
            | selenium-hover-then-click         | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String by,java.lang.String wait,java.lang.Integer                                                 |
            | selenium-quit                     | web-driver,org.openqa.selenium.WebDriver                                                                                                                      |
            | selenium-remote-driver-init       | hub,java.lang.String browser,java.lang.String                                                                                                                 |
            | selenium-screen-shot              | web-driver,org.openqa.selenium.WebDriver                                                                                                                      |
            | selenium-scroll-to                | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String by,java.lang.String wait,java.lang.Integer                                                 |
            | selenium-send-keys                | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String by,java.lang.String value,java.lang.String wait,java.lang.Integer                          |
            | selenium-set-browser-size         | web-driver,org.openqa.selenium.WebDriver width,java.lang.Integer height,java.lang.Integer                                                                     |
            | selenium-switch-to                | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String by,java.lang.String wait,java.lang.Integer switchType,java.lang.String                     |
            | selenium-wait                     | web-driver,org.openqa.selenium.WebDriver selector,java.lang.String by,java.lang.String value,java.lang.String wait,java.lang.Integer                          |
            | sql                               | statements,java.util.List                                                                                                                                     |
            | ssh-client                        | commands,java.util.List                                                                                                                                       |
