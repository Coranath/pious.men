---
date: '{{ .Date }}'
draft: true
title: '{{ replace .File.ContentBaseName "-" " " | title }}'
pubdate: '{{ .Date }} SET ME!'
params:
    author: "Levi Moore"

---
