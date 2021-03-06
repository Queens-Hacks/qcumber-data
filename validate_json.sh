#!/bin/bash

function validate_json_files {
    files=( $(ls -1 | grep -i ".*\.json" | sed 's!\ !___!g') )
    count=0
    for f in "${files[@]}"; do
        (( count=count + 1 ))
        if [[ $(expr $count % 500) -eq 0 ]]; then
            echo "$count/${#files[@]}"
        fi
        file_name=$( echo $f | sed 's!___!\\\ !g' )
        if [[ -f "$file_name" ]] && [[ ! -d "$file_name" ]] ; then
            cat $file_name | python -mjson.tool >/dev/null
        fi
    done
}

function validate_recursive {
    for dir in $(ls); do
        if [ -d "$dir" ]; then
            cd "$dir"
            pwd
            validate_recursive
            validate_json_files
            cd ..
        fi
    done
    validate_json_files
}

validate_recursive
