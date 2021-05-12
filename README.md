# TermiTorial

TermiTorial, the abbreviation form of Terminal Tutorial, is a script that allows you to organize your tutorial in multiple lessons using a hierarchical structure where each lesson is written in a separate Markdown file. Then, run through it interactively in a terminal. It is driven by [demo-magic](https://github.com/paxtonhare/demo-magic) under the hood.

To learn more on the use of TermiTorial, please check [The TermiTorial Tutorial: Make Markdown Executable](docs/README.md).

## How to Install?

It is easy to install TermiTorial. You can git clone it from this GitHub repository, then make termitorial.sh executable as below:
```shell
git clone https://github.com/morningspace/termitorial.git
cd termitorial
chmod +x termitorial.sh
```

To run TermiTorial at any place, you can place the script anywhere in your `PATH`. For example:
```shell
ln -s $PWD/termitorial.sh /usr/local/bin/termitorial
```

You may now invoke TermiTorial at any place:
```shell
termitorial -h
```

## How to Run?

To launch a tutorial using TermiTorial, make sure you are in the tutorial root directory. Then run TermiTorial.

You can run the whole tutorial as below:
```
termitorial
```

You can also choose a specific lesson by appending the path to the lesson when run the script. The lesson file extension `.md` can be comitted. For example:
```
termitorial features/basics
```

To list all lessons available to the tutorial, you can run below command:
```
termitorial -l
```

## The TermiTorial Tutorial

[The TermiTorial Tutorial: Make Markdown Executable](docs/README.md) is a tutorial that can walk you through all features provided by TermiTorial. It is organized using a hierarchical structure with a set of Markdown files which can be viewed online, meanwhile can be launced from the command line by TermiTorial itself.

You can go into the tutorial root directory `docs`, then launch the tutorial using TermiTorial. To learn TermiTorial by TermiTorial itself. Hope you enjoy it!
