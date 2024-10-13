#!/bin/bash

#
# Mostly for JS projects
#
# In the scenario where you end up with multiple same name files,
# e.g. `my-component.tsx` `my-component.spec.ts` `my-component.module.css`
#
# It is much tidier to put all related files inside a folder and use an index file naming convention
# e.g. `my-component/index.tsx` `my-component/index.spec.ts` `my-component/index.module.css`
#
# A nice feature of this, is that the import:
# `import { Foo } from "./my-component";`
#
# will still work without requiring any changes
#
# This script, when run with `./nest.sh my-component.tsx`
# Will create a folder if required, move and rename the file into the folder
# Result: `my-component/index.tsx`
#
#

#
#

if [[ ! -e "$1" ]]; then
	echo "File does not exist"
	exit 1
fi

FILE_NAME=$(basename "$1")
DIRNAME=$(dirname "$1")

EXTENSIONS=(
	".spec.ts"
	".stories.ts"
	".ts"
	".stories.tsx"
	".spec.tsx"
	".tsx"
	".stories.js"
	".spec.js"
	".js"
	".stories.jsx"
	".spec.jsx"
	".jsx"
	".module.css"
	".css"
)

# Get the base name
BASE=$(basename "$1")

for ext in "${EXTENSIONS[@]}"; do
	BASE="${BASE%"$ext"}"
done

if [[ "$FILE_NAME" == "$BASE" ]]; then
	echo "Unsupported file extension '$1'"
	exit 1
fi

# 'subtract' $BASE from $FILE_NAME to get the remaining, the extension
EXTENSION="${FILE_NAME#"$BASE"}"

# echo $EXTENSION

NEW_DIR_PATH="$DIRNAME/$BASE"
# echo "$NEW_DIR_PATH"

mkdir -p "$NEW_DIR_PATH"

if git rev-parse --git-dir >/dev/null 2>&1; then
	if git ls-files -o -X .gitignore | grep -q "$1"; then
		# echo "File '$1' is not under version control"
		mv "$1" "$NEW_DIR_PATH/index$EXTENSION"
	else
		echo "File '$1' is under version control, using 'git mv'"
		git mv "$1" "$NEW_DIR_PATH/index$EXTENSION"
	fi
	# git repo!
else
	mv "$1" "$NEW_DIR_PATH/index$EXTENSION"
fi
