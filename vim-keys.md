# Complete Vim Motions & Selection Cheatsheet

## Basic Movement

- `h` `j` `k` `l` - left, down, up, right
- `w` - forward by word
- `b` - backward by word
- `e` - end of current word
- `ge` - end of previous word
- `W` `B` `E` - WORD movements (space-delimited)
- `0` - beginning of line
- `^` - first non-whitespace character of line
- `$` - end of line
- `g_` - last non-whitespace character of line

## File Navigation

- `gg` - beginning of file
- `G` - end of file
- `{number}G` - go to line number
- `:{number}` - go to line number
- `H` - top of screen
- `M` - middle of screen
- `L` - bottom of screen
- `Ctrl+u` - scroll up half page
- `Ctrl+d` - scroll down half page
- `Ctrl+b` - scroll up full page
- `Ctrl+f` - scroll down full page

## Line Navigation

- `f{char}` - find next occurrence of character on line
- `F{char}` - find previous occurrence of character on line
- `t{char}` - go to just before next occurrence of character
- `T{char}` - go to just after previous occurrence of character
- `;` - repeat last f/F/t/T motion forward
- `,` - repeat last f/F/t/T motion backward

## Search & Jump

- `/{pattern}` - search forward for pattern
- `?{pattern}` - search backward for pattern
- `n` - next search result
- `N` - previous search result
- `*` - search for word under cursor (forward)
- `#` - search for word under cursor (backward)
- `%` - jump to matching bracket/parenthesis
- `''` - jump back to previous position
- `'.` - jump to last edit

## Text Objects (use with d, c, y, v)

### Inner Objects (i)

- `iw` - inner word
- `iW` - inner WORD
- `is` - inner sentence
- `ip` - inner paragraph
- `i"` `i'` `i`` - inside quotes
- `i(` `i)` `ib` - inside parentheses
- `i[` `i]` - inside square brackets
- `i{` `i}` `iB` - inside curly braces
- `i<` `i>` - inside angle brackets
- `it` - inside XML/HTML tag

### Around Objects (a)

- `aw` - a word (includes whitespace)
- `aW` - a WORD (includes whitespace)
- `as` - a sentence
- `ap` - a paragraph
- `a"` `a'` `a`` - around quotes (includes quotes)
- `a(` `a)` `ab` - around parentheses
- `a[` `a]` - around square brackets
- `a{` `a}` `aB` - around curly braces
- `a<` `a>` - around angle brackets
- `at` - around XML/HTML tag

## Visual Mode (Text Selection)

### Enter Visual Mode

- `v` - visual mode (character-wise)
- `V` - visual line mode (line-wise)
- `Ctrl+v` - visual block mode (column/rectangle)
- `gv` - re-select last visual selection

### Visual Mode Navigation

- Any motion extends the selection
- `o` - move cursor to other end of selection
- `O` - move cursor to other corner (block mode only)

### Common Visual Selections

- `vw` - select word
- `vaw` - select word with whitespace
- `vi"` - select inside quotes
- `va(` - select around parentheses
- `V3j` - select 4 lines (current + 3 down)
- `Ctrl+v3j2l` - select 4x3 character block

## Operations After Selection

- `d` - delete selection
- `y` - yank (copy) selection
- `c` - change selection (delete and enter insert mode)
- `x` - delete selection (visual mode)
- `s` - substitute selection (delete and enter insert mode)
- `r{char}` - replace all selected characters with {char}
- `u` - make selection lowercase
- `U` - make selection uppercase
- `~` - toggle case of selection
- `>` - indent selection right
- `<` - indent selection left
- `=` - auto-indent selection

## Useful Combinations

### Delete/Change/Yank + Motion

- `dw` - delete word
- `db` - delete backward word
- `d$` - delete to end of line
- `d0` - delete to beginning of line
- `dd` - delete entire line
- `cw` - change word
- `ci"` - change inside quotes
- `ca(` - change around parentheses
- `yw` - yank word
- `y$` - yank to end of line
- `yy` - yank entire line

### Advanced Combinations

- `daw` - delete a word (includes whitespace)
- `diw` - delete inner word (excludes whitespace)
- `cas` - change a sentence
- `dap` - delete a paragraph
- `yi[` - yank inside square brackets
- `va{=` - select around braces and auto-indent

## Quick Reference Patterns

- `operator + motion` - perform operation on motion
- `operator + text object` - perform operation on text object
- `visual selection + operator` - perform operation on selection
- `number + motion` - repeat motion number of times
- `.` - repeat last change

## Getting Started Tips

1. Master basic movements: `hjkl`, `w/b`, `0/$`, `gg/G`
2. Learn search: `/pattern` and `*` for current word
3. Practice text objects: `ciw`, `di"`, `ya(`
4. Use visual mode for complex selections: `v` + motion
5. Combine numbers with motions: `3w`, `5j`, `2dd`
