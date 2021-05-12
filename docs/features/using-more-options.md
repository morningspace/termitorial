# Using more options

There are variant options supported by TermiTorial when you launch the tutorial. To learn what options are
supported by TermiTorial, please run `termitorial.sh -h`. In this lesson, I will give you some examples.

## Tracking tutorial progress

To list all lessons that are included in a tutorial. You can use `-l` option when run `./termitorial.sh`:
```
./termitorial.sh -l
```

As an example, for The TermiTorial Tutorial, you will see something similar as below:
```
[✓] README
[✓] features/basics
[?] features/implicit-code
[✓] features/interactive-mode
[✓] features/manipulating-variables
[✓] features/setup-and-teardown
 ➞  features/using-more-options
```

By checking the list, you will be able to know:
* The current lesson that you are learning (marked with '➞')
* The lessons that are finished (marked with '[✓]')
* The lessons that are stopped abnormally for some reason (marked with '[?]')
* The lessons that are not started yet. (marked with '[ ]')

## Running tutorial automatically

If you specify `-n` option when launch the tutorial, the tutorial will be run automatically without asking 
you to press Enter key any more. This can be useful if you want to integrate your Markdown files into some
automation mechanism.
```
./termitorial.sh -n
```
