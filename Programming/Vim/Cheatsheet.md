# Vim Cheatsheet
For useful commands that I have seen in videos and other places, and I will use from time to time. I will probably just list the source of motion and then the motion itself with its use.

## [Vim Tips You Probably Never Heard Of](https://www.youtube.com/watch?v=bQfFvExpZDU&ab_channel=LukeSmith)

- `gj` and `gk`: Move cursor up and down single section of long sentence if the line is wrapped.
- `g0` and `g$`: Move the cursor to the end and start of each section of a wrapped line.
- `gq`: Turn a long line into multiple lines.
- `gu`: Uncapitalize
- `gU`: Capitalize
- `~` and `g~`: Switch the capitalization of a selection
- `gf`: Open the highlighted text as a file
- `gv`: Reselect the previously selected text (similar to pressing "n" to go to the next match)
- `gj`: Join lines with spaces in between
- `gJ`: Join lines without spaces in between 
- `g&`: Substitute something in the entire file
- `:s/word/new_word/g`: Substitute "word" by "new_word" in the current line

## [Vim Motions and Command Language](http://springest.io/vim-motions-and-command-language)

- `vip`: Select the inside of a paragraph (section not separated by an empty line)

## [Vim Cheatsheet](https://vim.rtorr.com)

Marks can be used to set a point where you want to be continuously going to during your coding session. 

- `ma`: Create a marker "a" in the current line
- `backtick+a` or `'a`: Jump to marker "a". The backtick jumps to the beginning of the entire line and the apostrophe jumps to the first non-blank character.
- `:markers`: List all the available markers in the current file. 
- `"+p` : Copy from clipboard instead from the register

## Surround Plugin

- `cs"'`: Change the double quotation marks in "this sentence", into single quotation marks ('this sentence')
- `vS"`: Surrounds a selection (done after activating visual mode) with the delimiter specified at the end (in this case it surrounds the selection in double quotation marks)

## Learn Vim Extension

- `gn` :  Go to the next match and select it. If you are in Visual mode, it will select all the text from your current position, to the end of the match. It can be used in combination with `.` to continuously select and apply an operation on multiple matches.

### Windows
- `:sp {relative-path-to-file}` : Split the current window horizontally (putting one window on top of the other). The relative path is relative to the currently opened and selected file.
- `:vsp {relative-path-to-file}` : Split the current window horizontally (creating the window next to the current one). The relative path is relative to the currently opened and selected file.
- `<C-W> hjkl` : Move from one split to the other just like you move across a regular file. If you want to move to the tab to your right, you can just do `<C-W> l`, for example.

### Tabs
- `:tabnew {file}` : Open a new file in the current tab. Keep in mind that once you have opened a new path it will consist of a "temporarily opened file" so if you run the command again, the "temporary" tab will be replaced by your new opening. Go into the file and save in order to stop this. The path is given relative to the home path of the current project.
- `:tabo` : Close all other tabs except the current one.
- `:tabl` : Go to the last tab in the window
- `:tabe` : Open a new tab next to the current tab. Just like for `:tabnew`, if a temporary tab already exists in said position, it will be replaced by the new tab.
- `:tabc` : Close the current tab

### Surrounding
- `ds{char}` : Delete the surrounding character
- `ys{motionf}{char}` : Add surroundings. For example `ysapt` will make a prompt pop up asking you to add a tag around the current paragraph. Very useful for frontend stuff. You can also group this with `.` to keep surrounding elements with the tag or any other character you chose. Other examples: 
	- `ysst` will ask you to surround the current line with a tag like this: `<tag>Line</tag>`

### Vim-Sneak
- `s{char}{char}` : Move to the next occurrence of a two character sequence.
- `S{char}{char}`: Move to the previous occurrence of a two character sequence.
- `;` : Once a two-character occurrence was found, move to the next one with this
- `,` : Move to the previous occurrence of a two-character match
- `{operator}z{char}{char}` : Apply an operator to the text found until a two character match. 

### Easymotion
- `<leader><leader>w` : This will label all the "beginnings of words" with a different code. Type that code and you will move to that line. 
- `<leader><leader>j` : This will label all the "beginning of lines" with a different code. Type that code and you will move to that line. 
- `<leader><leader>f{char}` : This will label all the occurrences of a character. Type that code and you will move to that line. 
- `<leader><leader>t{char}` : This will label all characters until the occurrences of a character. Type that code and you will move to that line. 

### Multiple Cursors
- `/{search}gb` : Puts the cursor on top of your match and then when you type `gb`, you will add a cursor to the next match. You can edit multiple matches by then typing an operator.
[[Module 1 - Lecture 5 - Example Critical Point]]

### VSCode Mappings
- `gh` : Simulate the mouse hovering over an element.
----

## Vim Fandom

- `<C-a>` : Increase a number by 1 unit. Can be prefixed by a number to increase multiple times
- `<C-x>` : Decrease a number by 1 unit
- `zc` : Close code fold
- `zo` : Open code fold

--------
## Stack Overflow

- `<C-O>` : Go back to your previous position.