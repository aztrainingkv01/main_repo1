#!/bin/sh

git tag -a $@ -m "$@ release on MAIN REPO"
git push origin $@
git submodule foreach "(git tag -a $@ -m '$@ release on SUB REPOP')&"
git submodule foreach "(git push origin --no-verify $@)&"