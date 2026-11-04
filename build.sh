#!/bin/sh
# page.html(본문 소스)을 감싸 GitHub Pages용 index.html을 만든다.
cd "$(dirname "$0")"
{
  printf '%s\n' '<!doctype html>' '<html lang="ko">' '<head>' \
    '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">' \
    '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>'
  cat page.html
  printf '%s\n' '</html>'
} > index.html
