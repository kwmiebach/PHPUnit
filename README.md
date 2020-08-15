# PHPUnit

PHPUnit docker for Magento 2 code tests 

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
