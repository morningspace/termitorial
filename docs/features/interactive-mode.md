# Running in interactive mode

Termitorial supports interactive mode where you can call shell scripts or commands interactively
during the time when you go through the Markdown file.

To enter into interactive mode, you just need to call the pre-defined method `tutorial::exec` in
a `<!--shell -->` block. After then, you should be able to run any shell script or command until
you type `quit` as it prompts.

<!--shell
tutorial::exec
-->

You can also limit the shell function or command to be run in the interactive mode by specifying
the option `--include` or `--exclude` when call `tutorial::exec`.

For example, using `--include 'ls|cat|echo'` to restrict that user can only execute: `ls`, `cat`, 
and `echo`.

<!--shell
tutorial::exec --include 'ls|cat|echo'
-->

Using `--exclude 'exit|cd'` to disallow user not to run `cd` to change directory, nor `exit` to
exit the tutorial.

<!--shell
tutorial::exec --exclude 'cd|exit'
-->
