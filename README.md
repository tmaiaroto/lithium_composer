## Lithium Framework with Composer

This repository is very similar to the older ```UnionOfRAD/framework``` repository, except that 
it has been designed for use with Composer. It contains a common application directory structure 
for the Lithium framework to get you started with your project faster.

### Installation



### Package Management

You'll notice there is a ```composer.json``` file that brings in the actual framework using Composer. 
This configuration also sets the typical Composer ```vendor``` directory to ```libraries``` for 
Lithium's own autoloader and convention.

With this repository, you are all set to add new packages to the ```composer.json``` file.

### Autoloader

Lithium does not use Composer's autoloader and all libraries live within this ```libraries``` directory, 
but there is nothing that prevents you from loading libraries using Composer or otherwise of course. 
We encourage you to use Lithium's autoloader as it is quite powerful and can transform older libraries 
to be PSR-0 compatible.