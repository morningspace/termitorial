# Calling shell scripts or commands implicitly

TermiTorial allows you to embed shell scripts or commands in your Markdown file inside `<!--shell -->`
blocks which will be invisible to people who read the file, but can be executed when they run the file.

Let's put the below shell script snippet here and surround with `<!--shell -->`:
```html
<!--shell
echo "Hello $USER"
-->
```
When you run at this line, you should see the "hello $USER" message.

<!--shell
echo "Hello $USER"
-->

Now, let's add a call to the pre-defined shell function `log::info`:
```html
<!--shell
log::info "Hello $USER"
-->
```
This will print a log message at info level.

<!--shell
log::info "Hello $USER"
-->

Of course you can run any other shell command in the `<!-- -->` block. For example:
```html
<!--shell
ls
-->
```
This will list all sub-directories and files under the current directory.

<!--shell
ls
-->

Lastly, if you just want to add some invisible text, you can use `<!-- -->` blocks.
<!--
These lines should be invisible to people.
Neither when you read the file, nor run the file
-->
