# Github: Markdown

This is a short summary of the markdown used by Github. For more details, check [here](https://help.github.com/categories/writing-on-github/)

## Table of Contents

- [Headers](#headers)
- [Text Styles](#text-styles)
- [Links](#links)
- [Lists](#lists)
- [Tasks](#tasks)
- [Mentioning Github Users and Teams](#mentioning-github-users-and-teams)
- [Emoji](#emoji)
- [Ignoring Markdown Formatting](#ignoring-markdown-formatting)

## Headers

    # H1
    ## H2
    ### H3
    #### H4
    ##### H5
    ###### H6

## Text Styles

    **This is a BOLD text**
    *This is an ITALIC text*
    ~~This is a STRIKETHROUGH text~~
    **This is BOLD and _this is BOLD AND ITALIC_**
    > This is a quoted text
    `This is an inline computer code`
    ```
    This is a block of computer code
    This is a block of computer code
    ```

## Links

- Outside Links
```
[Link Text](https://www.example.com/)
```
- Anchor Links: Headers are linked automatically with lowercase-hyphened-anchors
```
## Text Styles -> #text-styles
```
- Local Repository Relative Links
```
[A Link To A Doc In This Repo](docs/SOMEDOCS.md)
```

## Lists

```
- Unordered list 1
- Unordered list 2
- Unordered list 3
```
```
* Unordered list 1
* Unordered list 2
* Unordered list 3
```
```
1. Ordered list 1 (Starting at 1)
1. Ordered list 2
1. Ordered list 3
```
```
4. Ordered list 1 (Starting at 4)
4. Ordered list 2
4. Ordered list 3
```
```
1. Root Ordered List 1
   - Nested unordered list 1
   - Nested unordered list 2
     1. Nested Ordered list 1
     1. Nested Ordered list 2
        * Deeper nested unordered list 1
        * Deeper nested unordered list 2
1. Root Ordered List 2
```

## Tasks

If a task list item description begins with a parenthesis, you'll need to escape it with `\`
```
- [x] Finished task
- [ ] Task to do
- [ ] Another task to do
```

## Mentioning Github Users and Teams

- Mentioning User/Team will trigger a notification and bring their attention to the conversation
- Typing an `@` symbol will bring up a list of people or teams on a project
- The autocomplete results are restricted to repository collaborators and any other participants on the thread

```
@github/support, What do you think about these updates?
```

## Emoji

- Typing `:` will bring up a list of suggested emoji
- For a full list of available emoji, check [here](https://www.webpagefx.com/tools/emoji-cheat-sheet/)

```
:YOUREMOJICODEHERE:
```

## Ignoring Markdown Formatting

To ignore any of the markdown formatting mentioned here, escape them with `\`
