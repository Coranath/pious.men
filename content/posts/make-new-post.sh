#! /bin/fish

mkdir $argv

cd $argv

touch index.md

echo "---
date: '$(date '+%Y-%m-%dT%H:%M:%S')'
draft: true
title: '$argv'
pubdate: '$(date '+%Y-%m-%dT%H:%M:%S')'
params:
    author: 'Levi Moore'
tags:
    - CHANGEME
image: 'LOOKATME'
---
" > index.md