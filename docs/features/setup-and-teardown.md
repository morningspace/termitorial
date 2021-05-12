# Understanding setup and teardown hook

TermiTorial supports setup and teardown hook both at tutorial level and lesson level. Typically, in setup hook you
can do some pre-check logic while in teardown hook you can do some cleanup logic. 

## How it works

The hooks are implemented as shell functions which are very similar to the concept of setup and teardown method in
xUnit. At lesson level, each setup hook will be executed before the lesson is launched and each teardown hook will
be executed after the lesson is finished either noramally or abnoramally. At tutorial level, the setup hook will be
executed before the whole tutorial is launched and the teardown hook will be executed after the whole tutorial is
finished.

## Defining setup and teardown hooks

To define setup and teardown hooks at tutorial or lesson level, you just need to create a `.sh` file with arbitrary
name under the root directory of the tutorial. Then, define the hooks as shell functions using the following naming
convention:
* Setup hook at tutorial level: `tutorial::setup`
* Teardown hook at tutorial level: `tutorial::teardown`
* Setup hook at lesson level: `tutorial::path-to-lesson-setup`, e.g.: `tutorial::features-basics-setup`
* Teardown hook at lesson level: tutorial::path-to-lesson-teardown, e.g.: `tutorial::features-basics-teardown`

## Examples

As some examples, please refer to [helper.sh](helper.sh) where it defines a set of setup and teardown hooks. It uses
teardown hook at tutorial level to print the overall time elapsed for the tutorial or lesson being executed. It also
uses the setup hook at lesson level to check if the prerequisite lessons of the current lesson have been finished or
not. For example, it requires `features/basics` and `features/implicit-code` to be finished at first, before you can
launch `features/setup-and-teardown`. To to so, it invokes the pre-defined function `tutorial::depends` in the setup
hook. The setup hook will also create a temp file, which will be deleted in the teardown hook after the whole lesson
is finished.

Let's check if the temp file exists:
```shell
ls $temp_file
```
<!--shell
TT_PRINT_TIME_ELAPSED=1
-->