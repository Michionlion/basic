# BASIC materials

Final Project and learning materials for the BASIC programming language

## Dependencies

Requires Java, Ant, and Maven to build dependencies.

## Running

Execute `gradle finalProject --console=plain` to play Warish.
Some additional commands are given below.

* `gradle build` compiles all `bas` files in `src` to C64 program code in `bin`
* `gradle shell` opens a C64 emulator, which can `load` BASIC files from your filesystem
* `gradle visual` opens a GUI for running BASIC files
* `gradle clean` removes any built components
* `gradle run` runs all found `bas` files
