This document describes my personal coding style for C-like programming languages. Its main goal is to facilitate code consistency and to prevent the programmer from having to make stylistic choices, while also keeping a reasonable level of flexibility.

# Indentation and Lines
> Every block of code should be indented one level deeper than its surrounding block.

While braces alone would be sufficient to define blocks of code, the indentation makes them easy to visually parse.

> Continued lines should be indented by two additional levels.

The double indentation clearly separates a line continuation from a new block of code.

> Use tab characters for indentation.

Tabs are easier to handle than spaces, especially when using less powerful text editors.

> One level of indentation is four characters wide.

A width of four is a happy medium between an eight-character width, which easily gets excessive in switch-Statements and line continuations, and a two-character width, which can be harder to read.

> A line should not contain more than one statement. This holds true for variable declarations/assignments as well.

Combining more than one statement on a single line disrupts clarity and consistency, making it easy to miss important stuff.

> Indent the body of a switch statement by an additional level.

```
switch (piece->color) {
	case ORANGE:
		x_kick = piece->x_pos[2];
		y_kick = piece->y_pos[2];
		break;

	case BLUE:
		x_kick = piece->x_pos[0];
		y_kick = piece->y_pos[0];
		break;
}
```

While the code of a case label isn't technically its own block, it should be indented that way for clarity's sake anyways.

> Do not indent labels.

Labels are different from normal control flow and need to be fast and easy to find, so they should be flush with the left edge.

# Braces
```
if (rc) {
	for (i = 0; i != 4; i++) {
		piece->y_pos[i]++;
	}
} else {
	lines_dropped++;
}
```

> The opening brace of a block of code should be placed at the end of its header statement, preceeded by a single space.

If the indentation rules above are followed, the beginning of a new block of code should always be clear without the need to place the opening brace on its own line. Putting the brace on the same line as the first statement of the new code block either introduces inconsistency with the remaining statements or makes maintaining proper indentation a lot harder, while also being terribly ugly.

> The closing brace of a block of code should be placed at the beginning of the line after the last statement, indented to the same level as its enclosing block.

This placement allows the code to breathe a little more and also ties in nicely with the next rule:

> The line of the closing brace should only contain code that continues (with a space in between) or concludes the header statement.

This makes control flow continuations distinct from the beginning of a new statement.

> Do not omit braces, even when the language would allow it.

Omitting braces introduces inconsistency and also makes changes really annoying, because instead of just having to add a new line, you would also need to mess around with the braces. Furthermore, control flow continuations lose their distinction described above.

