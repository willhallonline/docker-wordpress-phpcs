## Supported tags and respective ```Dockerfile``` links

* ```latest```, ```alpine``` [Dockerfile](https://github.com/willhallonline/docker-wordpress-phpcs/alpine/blob/master/Dockerfile)
* ```stretch``` [Dockerfile](https://github.com/willhallonline/docker-wordpress-phpcs/stretch/blob/master/Dockerfile)

**This is a Dockerised Solution for running PHPCS with WordPress Standards**.

## What is PHPCS?

PHP_CodeSniffer is a set of two PHP scripts; the main ```phpcs``` script that tokenizes PHP, JavaScript and CSS files to detect violations of a defined coding standard, and a second ```phpcbf``` script to automatically correct coding standard violations. PHP_CodeSniffer is an essential development tool that ensures your code remains clean and consistent.

## What are Wordpress Coding Standards?

The [Wordpress Coding Standards](http://make.wordpress.org/core/handbook/coding-standards/) apply to code within Wordpress and its contributed plugins.

## Docker Commands

### Pull

```
docker pull willhallonline/wordpress-phpcs
docker pull willhallonline/wordpress-phpcs:alpine
```

### Run

#### PHPCS (PHP CodeSniffer)

```
docker run -it --rm -v $(pwd):/app willhallonline/wordpress-phpcs phpcs [YOUR-CODE]
docker run -it --rm -v $(pwd):/app willhallonline/wordpress-phpcs:alpine phpcs [YOUR-CODE]
```

#### PHPCBF (PHP CodeFixer)

```
docker run -it --rm -v $(pwd):/app willhallonline/wordpress-phpcs phpcbf [YOUR-CODE]
docker run -it --rm -v $(pwd):/app willhallonline/wordpress-phpcs:alpine phpcbf [YOUR-CODE]
```
