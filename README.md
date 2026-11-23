# Lotto 6/49 (Turing)

A Lotto 6/49 simulator I wrote in Turing 4.1.1 for my first programming course in high school (version 1.0, September 9, 2016). It's the earliest of the projects here: a text-console program built on the basics, with arrays, loops, input validation and random numbers. All of its text is in French.

## How it plays

- You start with $0 and add money. Each ticket costs $3.
- Pick 6 different numbers from 1 to 49. A number that's out of range or already picked is asked for again.
- The game draws 6 different numbers, shows them beside yours, and says which of yours matched.
- Prizes: 3 matches win $10, 4 win $100, 5 win $10,000, and all 6 win $10,000,000.
- After each draw you can add more money, then type `ok` to play again with the same numbers or `quit` to stop.

## The series

The three Turing projects come from my first programming course, with Turing as my first language. Each one is built around what the course had most recently introduced. Pizzeria LaBenza is from my next programming course, in Visual Basic .NET.

| # | Project | When | What it covers |
| --- | --- | --- | --- |
| 1 | **Lotto 6/49** (this repo) | September 2016 | Text console: input and output, arrays, nested loops, input validation, random draws without repeats |
| 2 | [Duck Hunt](https://github.com/blafr103/duck-hunt-turing) | November 2016 | Graphics: images, mouse input, double-buffered animation, hit detection, GUI buttons, background music, concurrent processes |
| 3 | [Minesweeper](https://github.com/blafr103/minesweeper-turing) | December 2016, final project | Record types, a 2D array of records, functions, a running timer, right-click input, a full win, lose and play-again loop |
| 4 | [Pizzeria LaBenza](https://github.com/blafr103/pizzeria-labenza-vbnet) | January 2017, VB.NET | Event-driven Windows Forms: controls and their event handlers, three screens, order details shared between them |

## Running it

Open `ics lotto.t` in Turing 4.1.1 and run it. There is no compiled build.

## Known quirks, kept as written

- Starting with less than $3 prints a message, then stops the program with an assertion error.
- Once your balance drops below $3, it keeps asking for money until you have at least $3, so you can't quit while broke.
- Any answer other than `quit` plays another round.
