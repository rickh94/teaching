build input outputdir="$HOME/Documents/teaching":
    #!/usr/bin/env bash
    name=`basename {{input}}`
    typst compile --root . -f pdf {{ input }} {{ outputdir }}/$name.pdf

[default]
build-all:
    #!/usr/bin/env python
    import subprocess
    import pathlib
    from pathlib import Path
    from multiprocessing import Pool
    import glob

    def compile(f):
        input = Path('.') / f
        fname = input.stem
        output = Path.home() / "Documents" / "teaching" / f"{fname}.pdf"
        print(f"compiling {f}")
        subprocess.run(["typst", "compile", "--root", ".", "-f", "pdf", input, output])
        
    if __name__ == "__main__":
        inputs = [f for f in glob.glob("**/*.typ", recursive=True) if not f.startswith("templates")]
        with Pool(5) as p:
            p.map(compile, inputs)

