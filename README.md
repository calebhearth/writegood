# writegood

Command line utility to help you write gooder.

## Usage

`writegood [passive|weasel|duplicate] <filename>`

### `passive`

Find and highlight passive voice.

`writegood passive declaration_of_independence.parchment`

> PASSIVE    2: that all men **are created** equal

### `weasel`

Find and highlight weasel words

`writegood weasel <filename>`

> WEASEL  15: the soup is **very** hot

### `duplicate`

Find and highlight duplicate words

`writegood weasel <filename>`

Given the following file:

```
Many readers are not aware that the
the brain will automatically ignore
a second instance of the word "the"
when it starts a new line.
```

> DUPLICATE  2: **the** brain will automatically ignore
