# TermiTorial Tutorial: Make Markdown Executable

TermiTorial is a script that allows you to organize your tutorial in multiple Markdown files hierarchically
then run through it interactively in terminal. It is driven by [demo-magic](https://github.com/paxtonhare/demo-magic) underneath.

<!--
Features
* basics
  * title
  * excerpt
  * code-shell
  * text
  * newline
  * links
* implicit code
* interactive mode
* manipulating variable (Input, save and reuse variable across runs)
* setup and teardown
  * dependency check
  * time elapsed
* tracking progress (-l)
* using more options
  * run automtically (-n)
-->
## About the tutorial

This tutorial will walk you through all features provided by TermiTorial. It includes the following lessons:
1. [Learning basics](features/basics.md)
2. [Calling shell scripts or commands implicitly](features/implicit-code.md)
3. [Running in interactive mode](features/interactive-mode.md)
4. [Manipulating variables](features/manipulate-variable.md)
5. [Understanding setup and teardown hook](features/setup-and-teardown.md)
6. [Using more options](features/using-more-options.md)

## How to run the tutorial

To run the tutorial, make sure you are in the tutorial root directory. Then run the termitorial.sh script.

You can run the whole tutorial as below:
```
termitorial.sh
```

You can also choose a specific lesson by appending the path to the lesson when run the script. For example:
```
termitorial.sh features/basics
```

The overal estimated time to complete this tutorial is 6 minutes. Have fun!
