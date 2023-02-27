#!/bin/bash -x

dir_path="jobs"

old_string='REPO_URL'

new_string="${REPO_URL}"

# loop through all the XML files in the directory and replace the string
for file in $dir_path/*/config.xml; do
    sed -i 's+${old_string}+${new_string}+g' "$file"
done
