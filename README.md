## Lithium Framework with Composer

This repository is very similar to the older ```UnionOfRAD/framework``` repository, except that 
it has been designed for use with Composer. It contains a common application directory structure 
for the Lithium framework to get you started with your project faster.

### Installation

We're going to assume you're installing this locally with a web server up and running. However, 
there is nothing really preventing you from installing on a remote web server either.

#### Install Script (the easy way)

Assuming you have a terminal open at your new empty web root, you can simply type 
the following command:

    bash <(curl -s https://raw.github.com/tmaiaroto/lithium_composer/master/install.sh)

#### Manual Clone and Install (slightly longer, still easy)

If you'd rather clone this repository yourself (from the terminal or otherwise) and manually 
call the Composer command to install the dependencies (the actual framework) that's fine too. 

You'll want to start off by cloning this repository and then running ```php composer.phar install``` 
or ```composer install``` if you've installed Composer via brew or something and it will then read 
the Composer configuration file and fetch the actual framework for you.

After that, you'll want to ensure your ```resources``` directory is ```chmod 777``` so it can 
be written to by the web server and such for cache, etc. Then you'll be ready to go.

### Package Management

You'll notice there is a ```composer.json``` file that brings in the actual framework using Composer. 
This configuration also sets the typical Composer ```vendor``` directory to ```libraries``` for 
Lithium's own autoloader and convention.

With this repository, you are all set to add new packages to the ```composer.json``` file, using 
```composer require``` or manually editing it of course.

### Autoloader

Lithium does not use Composer's autoloader and all libraries live within this ```libraries``` directory, 
but there is nothing that prevents you from loading libraries using Composer or otherwise of course. 
We encourage you to use Lithium's autoloader as it is quite powerful and can transform older libraries 
to be PSR-0 compatible.