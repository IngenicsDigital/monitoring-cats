#!/usr/bin/env sh
OLD_EMAIL=$1
GITHUB_USER=$2

# Ignore mangled history warning
export FILTER_BRANCH_SQUELCH_WARNING=1

CORRECT_NAME="$GITHUB_USER"
CORRECT_EMAIL="${GITHUB_USER}@users.noreply.github.com"

git filter-branch -f --env-filter "
if [ \"\$GIT_COMMITTER_EMAIL\" = \"$OLD_EMAIL\" ]
then
    export GIT_COMMITTER_NAME=\"$CORRECT_NAME\"
    export GIT_COMMITTER_EMAIL=\"$CORRECT_EMAIL\"
fi
if [ \"\$GIT_AUTHOR_EMAIL\" = \"$OLD_EMAIL\" ]
then
    export GIT_AUTHOR_NAME=\"$CORRECT_NAME\"
    export GIT_AUTHOR_EMAIL=\"$CORRECT_EMAIL\"
fi
" --tag-name-filter cat -- --branches --tags
