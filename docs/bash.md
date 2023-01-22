# Bash

This document contains instructions on how to work with Bash.

Useful resources:

- [Bash Reference Manual](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html)
- [ShellCheck](https://www.shellcheck.net/) - find bugs in your Bash script

## Multi-line strings

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

## JSON

### Create JSON object

Consider a file `foobar.json` containing the following JSON object:

```json
{
  "foo": "bar"
}
```

Create a new JSON object:

```bash
jq '{baz: .foo}' foobar.json
```

Output JSON:

```json
{
  "baz": "bar"
}
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

### Extract files from archive

Extract all files from `archive.tar`:

```bash
tar -xf archive.tar
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

```bash
wget <url>
```

## Packages

### Install Debian package

```bash
sudo dpkg -i <debian_package_path>
```

> **Note** Use `wget` to download a package from a web server, then use `dpkg` to install it.

## Inputs

### Yes/no prompt

```bash
read -r -p "Do something? (y/N) " response

case $response in
  [yY][eE][sS]|[yY])
    echo "Doing something..."
    ;;
  *)
    echo "Doing nothing. Exiting."
    exit 0
    ;;
esac
```

## Users

### Update user password

Update password for user `henrik`:

```bash
sudo passwd henrik
```
