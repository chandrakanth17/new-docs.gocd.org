#!/usr/bin/env bash
SOURCE=/Users/sanjanb/Projects/go/gitbook/docs.go.cd
declare -a dirs=("navigation" "faq" "configuration")
for dir in "${dirs[@]}"
do
  cp -R $SOURCE/$dir/* content/$dir
  mv content/$dir/index.md content/$dir/_index.md
done

grep -rl 'resources/images' content | xargs sed -i '' -e 's/resources\/images/images/g'
grep -rl '.md' --exclude=content/menu/index.md content | xargs sed -i '' -e 's/\.md/\.html/g'
