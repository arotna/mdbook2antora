# mdbook2antora

Convert mdbook to antora. See https:pwright.github.io/mdbook2antora

**Prerequisites**

* [Antora](https://docs.antora.org)
* [Asciidoctor-ruby](https://asciidoctor.org)
* shyaml and kramdown as installed by:

```
pip3 install --user -r requirements.txt
gem install kramdown-asciidoc
npm i -g replace
```

**Procedure**

1. Replace the contents of the `mdbook/src` directory of this repo with your content.

2. Run `convert.sh`

3. See the contents of `antora` directory. You can check that it builds by:
```
cd antora
antora local-playbook.yml
```