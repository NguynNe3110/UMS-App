#!/bin/zsh
echo "Checking your commit message"

commit_regex='^\[EMS-\d+\] .*$'
error_msg="Bad commit message. See example: \"[EMS-2] some text\""

if ! grep -iqE "$commit_regex" "$1"; then
    echo "$error_msg" >&2
    exit 1
fi
