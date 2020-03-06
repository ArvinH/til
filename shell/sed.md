# How to insert text before the first line of file

Use sed's insert (i) option which will insert the text in the preceding line.

`sed '1 i\`

To make it edit the file in place - with GNU sed - I had to add the -i option:

`sed -i '1 i\anything' filename`

Also syntax

`sed  -i '1i text' filename`

For non-GNU sed

You need to hit the return key immediately after the backslash 1i\ and after first_line_text:

```bash
sed -i '1i\
first_line_text
' filename
```

Also note that some non-GNU sed implementations (for example the one on macOS) require an argument for the -i flag (use -i '' to get the same effect as with GNU sed).


# How to use ENV in your command

replace single quote with double quote

e.g. `sed -i "1i\\ service:$CIRCLE_BRANCH" somefile.yaml`

# Replace ENV on the fly

Use echo to change env content:

To replace all occurrences, use ${parameter//pattern/string}:

```bash
message='The secret code is 12345'
echo "${message//[0-9]/X}"           
# prints 'The secret code is XXXXX'
```

in `sed`

```bash
sed -i "1i\\service: echo "${CIRCLE_BRANCH//[\.]/-}"" dist/app-dev.yaml
```

for using Mac

```bash
sed -i "" "1i\\               
service: echo "${CIRCLE_BRANCH//[\.]/-}"
" somefile.yaml
```
