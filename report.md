# Report and Reflection by Saejin Mahlau-Heinert

## Learning Process

I went through most of the learning process in figuring out BASIC with the help of fellow students and reading Wiki articles.
Another portion, especially near the beginning, was reading from the BASIC manual and textbook for the course.
A huge part of this is actually trying these things out, and the BasicShell from BasicV2 (see the included submodule in this repo) was extremely helpful.

## Development Process

In developing the practicals and eventually the final project, the BasicV2 interpreter was instrumental.
I made my way through the process mostly by trial and error, as there isn't a lot of high-quality BASIC documentation out there.
One of the biggest pitfalls was figuring out the idiosyncracies of BASIC --
things like variable type endings (`%` for ints, `$` for strings, nothing for reals), or conflicting tokens.
The conflicting tokens actually has two subparts that both proved difficult.
First, variable names can't contain BASIC keywords, in any form; for instance, `ATTIC` is not a valid variable name, since it uses the system variable `TI` as some of its letters.
Second, variables themselves are not compared past the first two characters, so `AT` and `ATT` both reference the same memory location, first defined from `AT`.
This was super confusing to find and took a few hours before I nailed down the reason for all the weird bugs.

Although my final project is admittedly fairly simple, we did experiment with more advanced features like arrays, sounds, and graphics, but they proved
incredibly difficult to work with, since many of them would only work on the actual Commodore 64 and it is not a good experience developing on that.
Thus, I tried to stick to console-only project ideas, in a bid to ensure almost any emulator would be able to run my project.
I also went for a more unique idea than simply recreating something, and I think Warish as a result is an interesting simple demo project.
