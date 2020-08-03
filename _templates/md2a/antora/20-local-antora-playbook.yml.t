---
to:  antora/local-antora-playbook.yml
---
site:
  title: <%= siteName %>
  # the 404 page and sitemap files only get generated when the url property is set
  url: https://arotna.github.io/mdbook2antora/html/
  start_page: <%= siteName %>::index.adoc
content:
  sources:
  - url: ../
    branches: HEAD
    start_path: antora


ui:
  bundle:
    url: https://github.com/arotna/antora-ui/raw/master/build/ui-bundle.zip
    snapshot: true

output:
  dir: ../docs/html

asciidoc:
  attributes:
    compName: <%= siteName %>
