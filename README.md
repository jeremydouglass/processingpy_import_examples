# Processing.py import examples

This is a collection of example sketches demonstrating how [Processing.py](https://github.com/jdf/processing.py) sketches can `import` and use pure-python modules and packages -- whether built-in (like `unittest`), simple modules like `pyparsing` or complex third-party packages like `jinja2`.

Processing.py is Python Mode for Processing. It can be used to quickly wrap Python code together with the Processing Java API and distribute them as cross-platform sketches that run either as standalone apps or within the Processing IDE (PDE). Processing.py supports Python 2.7 running on the [Jython](http://www.jython.org/) 2.7 Python-on-Java interpreter.

## Getting Started

Clone or download the collection, or clone or download any sketch in the collection. Then open any `.pyde` file using the Processing development envrionment (PDE) application.

## Prerequisites

If not already installed, you must:

1. Download Processing 3.x  
2. In Processing, install Python Mode:  
   -  `Processing > Tools > Add Tool > Modes > Python Mode`

## Using the example sketch

1. Download or clone the sketch repository.
2. Launch the example in Processing by double-clicking the `.pyde` file.
3. Modify the sketch.

## Adding pure-python modules / packages

Sketches come with the necessary modules (.py) or packages (directories of .py files) already included. To use them in a new sketch, either copy them into a new sketch or install them locally for all sketches.

#### Copy into a new sketch

1. In Processing, create and save a new Python Mode sketch.
2. In the file browser, open the example sketch
3. Copy any modules (.py) or packages (directories of .py files) from the example sketch into the new sketch directory, next to the new `.pyde` file.

The new sketch can now use `import mymodule` to access the module.

#### Install locally

1. In the file browser, open the example sketch
2. Copy any modules (.py) or packages (directories of .py files) from the example sketch into the directory Processing > libraries > site-packages
3. In Processing, create a new Python Mode sketch.

The new sketch can now use `import mymodule` to access the module even without a local copy in its directory.

----------

## Versioning

This project uses [semantic versioning](http://semver.org/). For the versions available, see the tags on this repository.

## License

This project is licensed under the Unlicense - see the [LICENSE](LICENSE) file for details.

## Authors

* [**Jeremy Douglass**](https://github.com/jeremydouglass)
