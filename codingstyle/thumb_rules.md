# Functions
## Complexity
There are two main indicators of how complex a function is:

The **number of local variables** (including parameters) should ideally be less than 5 and never exceed 10. Working on a function usually requires programmers to keep the relevant variables in their heads and for most people, remembering more than 4 bits of information at once, let alone 10, is very hard.

The **levels of indentation** within a function should only in rare cases exceed 3, as each additional level significantly increases the complexity of the control flow. For a programmer, trying to mentally map all possible paths through a deeply nested function becomes undoable.

Some less important complexity indicators are:

- having substantially more than 3 - 5 parameters
- depending on or mutating a lot of shared state
- having multiple points of return at different levels of nesting

Here are some mitigation techniques:

- Group Related Data: If your function deals with lots of similar bits of data, or ones that have a strong relation with each other, try to group them in a collection or data structure.
- Reconsider Function Purpose: If your function has a ton of variables and parameters and you're unable to group them in a sensible way, make sure it actually only does the one thing its name implies. Most of the time, heaps of seemingly disparate data indicate that it does more than it should.
- Constrain Scope: A local variable should be as short-lived as possible, so it does not clutter your function and your brain for the whole runtime. Also make sure to assign only one job to each variable, since reusing them can be confusing as to what its value actually means at a certain point in the function.
- Extract Subtasks: If you find a section of code within your function, that seems like a reasonably isolated subtask, you should extract this code and move to its own function. This is especially the case, when you can think of a good name for that functionality in an instant.
- Encapsulate State: If your function is intrinsically linked to some part of the shared state of the program, consider encapsulating the function together with that state into a class or module.
