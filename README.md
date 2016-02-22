# Automake KISS

KISS: [KISS principle - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/KISS_principle)

## Prerequisites

* make

```sh
sudo apt-get -y install make
```

```sh
sudo yum -y install make
```

## Installation

```sh
./configure
make
sudo make install
```

## Usage

```sh
automakekiss
```

`configure` and `Makefile.in` scaffolds are generated.

The `configure` shell script can only accept `--prefix` option. ONLY it.

`configure.scan`? `configure.ac`? `Makefile.am`? **They are none of my business.** :smile:

I only want to do

```sh
configure --prefix=$HOME/local && make && make install
```

for my simple projects.

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (C) 2015-2016 ka
