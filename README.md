# docker-drupal-phpcs

Docker Container with PHPCS setup for WordPress development

This Docker Container can be used to setup your environment for WordPress development. It combines...

* PHP
* Composer
* PHP CodeSniffer
* WordPress Coding Standards
* ... into a simple to use docker container.

So, as an example, here is the whole process of running the custom WordPress PHPCS/PHPCBF container:

## PHPCS
```➜ docker run -it -v $(pwd):/app willhallonline/wordpress-phpcs phpcs test.php```

```
FILE: /app/test.php
----------------------------------------------------------------------
FOUND 9 ERRORS AFFECTING 4 LINES
----------------------------------------------------------------------
 1 | ERROR | [x] Short PHP opening tag used; expected "<?php" but
   |       |     found "<?"
 1 | ERROR | [ ] Missing file doc comment
 3 | ERROR | [x] No space after opening parenthesis is prohibited
 3 | ERROR | [x] Opening brace should be on the same line as the
   |       |     declaration
 3 | ERROR | [x] No space before closing parenthesis is prohibited
 3 | ERROR | [x] Expected 1 space after closing parenthesis; found 1
 5 | ERROR | [x] Line indented incorrectly; expected at least 1 tabs,
   |       |     found 0
 5 | ERROR | [x] String "hello" does not require double quotes; use
   |       |     single quotes instead
 7 | ERROR | [x] Line indented incorrectly; expected at least 1 tabs,
   |       |     found 0
----------------------------------------------------------------------
PHPCBF CAN FIX THE 8 MARKED SNIFF VIOLATIONS AUTOMATICALLY
----------------------------------------------------------------------

Time: 240ms; Memory: 6Mb
```

## PHPCBF

```➜ docker run -it -v $(pwd):/app willhallonline/wordpress-phpcs phpcbf test.php```

```
Changing into directory /app
Processing test.php [PHP => 39 tokens in 8 lines]... DONE in 89ms (8 fixable violations)
        => Fixing file: 0/8 violations remaining [made 3 passes]... DONE in 222ms
Patched 1 file
Time: 1.1 secs; Memory: 6Mb
```
