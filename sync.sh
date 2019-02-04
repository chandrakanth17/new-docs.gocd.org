#!/usr/bin/env bash
SOURCE=/Users/sanjanb/Projects/go/gitbook/docs.go.cd
declare -a dirs=("navigation" "faq" "configuration")
for dir in "${dirs[@]}"
do
  cp -R $SOURCE/$dir/* content/$dir
  mv content/$dir/index.md content/$dir/_index.md
done

cp -R $SOURCE/resources/images/* static/images/
cp -R $SOURCE/resources/javascripts/* static/javascripts/
grep -rl 'resources/images' content | xargs sed -i '' -e 's/resources\/images/images/g'
grep -rl 'resources/javascripts' content | xargs sed -i '' -e 's/resources\/javascripts/javascripts/g'
grep -rl '.md' --exclude=content/menu/index.md content | xargs sed -i '' -e 's/\.md/\.html/g'

#Copy the section tree order from gitbook/Summary.md into content/menu/_index.md
#Replace with the following regex
# \((.*)\)
# \({{< relref \"$1\" >}}\)

