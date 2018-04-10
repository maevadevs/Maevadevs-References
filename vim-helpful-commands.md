# vim Helpful Commands
This is a list of vim commands that are personally most helpful.

## File Explorer
These commands modify the visual representation of system file structure as viewed in vi/vim text-based console.
Note: Use **<code><kbd>:</kbd>q</code>** to exit the file explorer.

**<code><kbd>:</kbd>e .</code>** Open fullscreen file explorer

**<code><kbd>:</kbd>Sex</code>** Open file explorer at bottom with horizontal split screen

**<code><kbd>:</kbd>Sex!</code>** Open file explorer on left with vertical split screen

## Edit Commands
These commands work by pressing the appropriate key on the keyboard.

**<code><kbd>i</kbd></code>** Enter <code>insert</code> mode

**<code><kbd>esc</kbd></code>** Exit <code>insert</code> mode

**<code><kbd>v</kbd></code>** Start selection of text. Use <kbd>&larr;</kbd> and <kbd>&rarr;</kbd> to move cursor.

**<code><kbd>y</kbd></code>** Copy a selected text to the clipboard

**<code><kbd>y</kbd><kbd>y</kbd></code>** Copy current line to the clipboard

**<code><kbd>d</kbd></code>** Cut a selected text to the clipboard

**<code><kbd>d</kbd><kbd>d</kbd></code>** Cut current line to the clipboard

**<code><kbd>p</kbd></code>** Paste a copied/cut text from the clipboard

**<code><kbd>~</kbd></code>** Inverse the case of the currently selected letter or word

**<code><kbd>g</kbd><kbd>~</kbd><kbd>~</kbd></code>** Inverse the case of each letter in the currently line of the cursor

**<code><kbd>:</kbd>%s/\\<./\\u&/g</code>** Sets first letter of each word to uppercase

**<code><kbd>:</kbd>%s/.*/\u&</code>** Sets first letter of each line to uppercase

**<code><kbd>:</kbd>1,10 w newfile.ext</code>** Copy lines 1 to 10 to a new file

**<code><kbd>:</kbd>1,10 w >> existingfile.ext</code>** Append lines 1 to 10 to an existing file

**<code><kbd>:</kbd>r externalfile.ext</code>** Insert the contents of an external file at the current cursor location

## Movement Commands
Apart from <kbd>&uarr;</kbd>, <kbd>&darr;</kbd>, <kbd>&larr;</kbd>, <kbd>&rarr;</kbd>, these commands help in fast movements of the cursor through the opened file (Not in <code>insert</code> mode.)

**<code><kbd>shift</kbd>+<kbd>&uarr;</kbd></code>** Previous page (<kbd>PageUp</kbd>)

**<code><kbd>shift</kbd>+<kbd>&darr;</kbd></code>** Next page (<kbd>PageDown</kbd>)

**<code><kbd>L</kbd></code>** Move cursor to the end of the current page

**<code><kbd>e</kbd></code>** Move cursor to the end of the next word

**<code><kbd>b</kbd></code>** Move cursor to the beginning of the previous word

**<code><kbd>0</kbd></code>** Move cursor to the beginning of the current line

**<code><kbd>$</kbd></code>** Move cursor to the end of the current line

**<code><kbd>gg</kbd></code>** Move cursor to the beginning of the file

**<code><kbd>G</kbd></code>** Move cursor to the end of the file

**<code><kbd>:59</kbd></code>** Move cursor to line <code>*59*</code>

**<code><kbd>%</kbd></code>** While cursor is on a bracket (or parenthesis), move cursor to the matchin bracket (or parenthesis)

## Find/Search Commands
These commands are key commands that allow to search texts through the opened file.

**<code><kbd>/</kbd>word</code>** Search <code>*word*</code>, top to bottom

**<code><kbd>?</kbd>word</code>** Search <code>*word*</code>, bottom to top

**<code><kbd>/</kbd>&#92;&lt;the</code>** Search words that start with <code>*the*</code>

**<code><kbd>/</kbd>the&#92;&gt;</code>** Search words that end with <code>*the*</code>

**<code><kbd>:</kbd>set ignorecase</code>** Ignore cases in all searches

## Find/Replace Commands
These commands are key commands that allow to search AND replace texts through the opened file.

**<kbd>:</kbd><code>%s/old/new/g</code>** Find and replace **all** <code>*old*</code> with <code>*new*</code> without confirmation requests, case sensitive

**<kbd>:</kbd><code>%s/old/new/gi</code>** Find and replace **all** <code>*old*</code> with <code>*new*</code> without confirmation requests, case insensitive

**<kbd>:</kbd><code>%s/old/new/gc</code>** Find and replace **all** <code>*old*</code> with <code>*new*</code> with confirmation requests, case sensitive

**<kbd>:</kbd><code>%s/old/new/gci</code>** Find and replace **all** <code>*old*</code> with <code>*new*</code> with confirmation requests, case insensitive

**<kbd>:</kbd><code>%s/^/new/g</code>** Find and replace the begining of each line with <code>*new*</code>

**<kbd>:</kbd><code>%s/$/new/g</code>** Find and replace the end of each line with <code>*new*</code>

**<kbd>:</kbd><code>%s/ *$//g</code>** Delete all white spaces

**<kbd>:</kbd><code>g/old/d</code>** Delete all lines that has <code>*old*</code>

**<kbd>:</kbd><code>%s#&lt;[^&gt;]\+&gt;##g</code>** Delete all HTML tags but keep the texts

**<kbd>:</kbd><code>%s/^\\(.*\\)\\n\\1$/\\1/</code>** Delete lines which appears twice

## File Commands <kbd>:</kbd>
These commands work by first typing the <kbd>:</kbd> key on the keyboard, then typing the letter(s).

**<kbd>:</kbd><code>w</code>** Write file

**<kbd>:</kbd><code>q</code>** Quit vim

**<kbd>:</kbd><code>q!</code>** Force Quit vim with no changes saving

**<kbd>:</kbd><code>wq</code>** Write file and Quit vim

**<kbd>:</kbd><code>x</code>** Write file and Quit vim (shortcut)

**<kbd>:</kbd><code>save filename.ext</code>** Save as a new file

**<kbd>:</kbd><code>set number</code>** Display line numbers of the editor

**<kbd>:</kbd><code>set nonumber</code>** Hide line numbers of the editor

**<code><kbd>g</kbd><kbd>f</kbd></code>** Open the file with the name corresponding to the word on which the cursor is currently on
