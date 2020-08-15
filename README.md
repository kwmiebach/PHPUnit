# PHPUnit

PHPUnit docker for Magento 2 code tests 

## Getting started

### PHP 7.1

[Getting Started with PHPUnit 7](https://phpunit.de/getting-started/phpunit-7.html)

[PHPUnit Manual](https://phpunit.readthedocs.io/en/7.5/)

### PHP 7.2

[Getting Started with PHPUnit 8](https://phpunit.de/getting-started/phpunit-8.html)

[PHPUnit Manual](https://phpunit.readthedocs.io/en/8.5/)

### PHP 7.3 | PHP 7.4

[Getting Started with PHPUnit 9](https://phpunit.de/getting-started/phpunit-9.html)

[PHPUnit Manual](https://phpunit.readthedocs.io/en/9.3/)

## Useage

    docker run --rm -v $PWD:/code domw/phpunit phpunit

    docker run --rm -v $PWD:/code domw/phpunit phpunit --version

    docker run --rm -v $PWD:/code domw/phpunit phpunit tests

`tests` instructs the PHPUnit command-line test runner to execute all tests found declared in `*Test.php` sourcecode files in the `tests` directory.

### Latest

    docker run --rm -v $PWD:/code domw/phpunit phpunit --version

    docker run --rm -v $PWD:/code domw/phpunit:latest phpunit --version

### PHP Version specific

    docker run --rm -v $PWD:/code domw/phpunit:7.1 phpunit --version

    docker run --rm -v $PWD:/code domw/phpunit:7.2 phpunit --version

    docker run --rm -v $PWD:/code domw/phpunit:7.3 phpunit --version

    docker run --rm -v $PWD:/code domw/phpunit:7.4 phpunit --version

### Config file

`phpunit.xml` for `v9.3`

```xml
<?xml version="1.0" encoding="UTF-8"?>
<phpunit xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" backupGlobals="false" backupStaticAttributes="false" bootstrap="vendor/autoload.php" colors="true" convertErrorsToExceptions="true" convertNoticesToExceptions="true" convertWarningsToExceptions="true" processIsolation="false" stopOnFailure="false" xsi:noNamespaceSchemaLocation="https://schema.phpunit.de/9.3/phpunit.xsd">
    <testsuites>
        <testsuite name="Brand Tests">
            <directory suffix="Test.php">./tests/Brand</directory>
        </testsuite>
    </testsuites>
    <php>
        <env name="APP_ENV" value="testing"/>
        <env name="CACHE_DRIVER" value="array"/>
        <env name="SESSION_DRIVER" value="array"/>
        <env name="QUEUE_DRIVER" value="sync"/>
    </php>
</phpunit>
```
