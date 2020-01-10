#!/usr/bin/env bash

# Copyright © 2020 Jakub Wilk <jwilk@jwilk.net>
# SPDX-License-Identifier: MIT

set -e -u
pdir="${0%/*}/.."
prog="$pdir/sunup"
echo 1..1
out=$("$prog" -L Warsaw)
sed -e 's/^/# /' <<< "$out"
if [ "${#out}" -eq 132 ]
then
    echo 'ok 1'
else
    echo 'not ok 1'
fi

# vim:ts=4 sts=4 sw=4 et ft=sh
