# Bash

This document contains instructions on how to work with Bash.

## Conversions

### Convert multi-line string to array

```bash
my_string='First line
Second line
Third line'

readarray -t my_array <<< "$my_string"

echo "${my_array[0]}"
# => First line

echo "${my_array[@]}"
# => First line Second line Third line
```

## Loops

### Loop over multi-line string

```bash
my_string='First line
Second line
Third line'

while read -r line
do
  echo "$line"
done <<< "$my_string"
```

### Loop over JSON array

Consider a file `animals.json` containing the following JSON array:

```json
[
  {
    "name": "dog",
    "sound": "woof"
  },
  {
    "name": "cat",
    "sound": "meow"
  },
  {
    "name": "horse",
    "sound": "neigh"
  }
  {
    "name": "cow",
    "sound": "moo"
  },
  {
    "name": "sheep",
    "sound": "baa"
  }
]
```

Loop over the JSON array using `jq`:

```bash
# Read the JSON array in compact format (one element per line)
animals=$(jq -c '.[]' animals.json)

# Read each line and write it to stdout
while read -r animal
do
  name=$(jq -r '.name' <<< "$animal")
  sound=$(jq -r '.sound' <<< "$animal")
  echo "The $name says $sound"
done <<< "$animals"
```

## Files

### Extract tar file

```console
tar -xf <tar_file>
```

### Substitue environment variables in a file

Consider a file `greeting.txt` containing the following plaintext:

```text
Hello, $NAME!
```

Substitute the environment variable `NAME` using `envsubst`:

```bash
export NAME='Henrik'

greeting=$(envsubst < greeting.txt)
echo "$greeting"
# => Hello, Henrik!
```

## Web

### Get resource from web server

```console
wget <url>
```
