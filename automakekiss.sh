#!/bin/bash

cat <<EOF > configure
#!/bin/bash

PREFIX=/usr/local
if [[ \$1 == --prefix=* ]]; then
  PREFIX=\`echo \$1 | sed 's/--prefix=//'\`
fi
sed "s|PREFIX=|PREFIX=\${PREFIX}|" Makefile.in > Makefile
EOF
chmod +x configure

cat <<EOF > Makefile.in
PREFIX=

all: a.out

a.out: foo.c
	gcc foo.c

install:
	mkdir -p $(PREFIX)/bin
	cp a.out $(PREFIX)/bin

uninstall:
	rm -f $(PREFIX)/bin/a.out

clean:
	rm -f a.out
