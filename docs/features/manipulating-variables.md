# Manipulating variables

When run the tutorial using TermiTorial, you can define variables and assign values to them interactively.
These variables can be used later when the lesson is going forward. You can also store these variables to
a local file so that the values you input will not be lost next time when you launch this tutorial.

## Define variables

As an example, let's define variables `$USER_NAME` and `$USER_ID`. Firstly, let's check if the variables
have been defined already:
```shell
echo USER_NAME=${USER_NAME}
echo USER_ID=${USER_ID}
```

Next, let's define the variables to override existing ones if there is any:
```shell
export USER_NAME=foo
export USER_ID=
```

Print the variables as below to verify they have been assigned with values correctly:
```shell
echo USER_NAME=${USER_NAME}
echo USER_ID=${USER_ID}
```

## Input values

You can also ask for a user input interactively using a pre-defined function `var::input`.

<!--shell
var::input "Please input your name" USER_NAME
-->

For a required variable, use pre-defined function `var::input-required` which keeps asking for user input
until a value is given.

<!--shell
var::input-required "Please input your id" USER_ID
-->

## Store values

You can also store the variables into a local file using pre-defined function `var::store`, so the values
that you input can be reused for the next time when you launch this tutorial.
<!--shell
var::store USER_NAME
var::store USER_ID
-->

Now let's see what the current values are for the variables that we defined:
```shell
echo USER_NAME=${USER_NAME}
echo USER_ID=${USER_ID}
```
