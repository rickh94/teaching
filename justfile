build input outputdir="$HOME/Documents/teaching":
    #!/usr/bin/env bash
    name=`basename {{input}}`
    typst compile --root . -f pdf {{ input }} {{ outputdir }}/$name.pdf

[default]
build-all:
    #!/usr/bin/env bash
    for typfile in `fd ".*.typ" -E "templates"`; do
        name=`basename $typfile .typ`
        typst compile --root . -f pdf $typfile $HOME/Documents/teaching/$name.pdf
    done

