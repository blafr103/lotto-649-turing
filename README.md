# Lotto 6/49 (Turing)

A Lotto 6/49 simulator written by Benoît Lafrance in Turing 4.1.1 for a high school computer science class (version 1.0, September 9, 2016). It runs in the Turing text console, and all of its text is in French.

## How it plays

- You start with $0 and add money. Each ticket costs $3.
- Pick 6 different numbers from 1 to 49. A number that's out of range or already picked is asked for again.
- The game draws 6 different numbers, shows them beside yours, and says which of yours matched.
- Prizes: 3 matches win $10, 4 win $100, 5 win $10,000, and all 6 win $10,000,000.
- After each draw you can add more money, then type `ok` to play again with the same numbers or `quit` to stop.

## Running it

Open `ics lotto.t` in Turing 4.1.1 and run it. There is no compiled build.

## Known quirks, kept as written

- Starting with less than $3 prints a message, then stops the program with an assertion error.
- Once your balance drops below $3, it keeps asking for money until you have at least $3, so you can't quit while broke.
- Any answer other than `quit` plays another round.
