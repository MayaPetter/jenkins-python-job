#!/bin/bash -x

old_string='REPO_URL'
new_string="${REPO_URL}"

# loop through all the XML files in the jobs directory and replace with the repo
for file in jobs/*/config.xml; do
    sed -i "s+${old_string}+${new_string}+g" "$file"
done
