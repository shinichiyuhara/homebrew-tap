# A tap for EB Library and eblook


## EB Library及びeblookのインストール
　未だにEPWINGの辞書を利用しており、また、Emacsから検索することが多いです。しかし、M1 Macになってから、インストールの仕方が記憶と違ってきているように思えます。そこで、今回、新たにM1 MacにEmacsのlookupをインストールした手順を自分のためのメモとして残しておきます。

## EB Library with UTF-8 supportのインストール

    $ brew create http://green.ribbon.to/~ikazuhiro/dic/files/ebu-4.5-20200413.tar.gz

configureの後に

    system "make install"

を追加する。

    $ brew install --build-from-source -v ebu

eblook 1.6.1+mediaのインストール

    $ brew create http://ikazuhiro.s206.xrea.com/filemgmt/visit.php/196

configureのオプションに

    "--with-ebu-conf=/opt/homebrew/etc/ebu.conf"

を追加し、その上、configureの後に

    system "make install"

を追加する。

$ brew install --build-from-source -v eblookEB Library及びeblookのインストール
　未だにEPWINGの辞書を利用しており、また、Emacsから検索することが多いです。しかし、M1 Macになってから、インストールの仕方が記憶と違ってきているように思えます。そこで、今回、新たにM1 MacにEmacsのlookupをインストールした手順を自分のためのメモとして残しておきます。

EB Library with UTF-8 supportのインストール
$ brew create http://green.ribbon.to/~ikazuhiro/dic/files/ebu-4.5-20200413.tar.gz
configureの後に

system "make install"
を追加する。

$ brew install --build-from-source -v ebu
eblook 1.6.1+mediaのインストール
$ brew create http://ikazuhiro.s206.xrea.com/filemgmt/visit.php/196
configureのオプションに

"--with-ebu-conf=/opt/homebrew/etc/ebu.conf"
を追加し、その上、configureの後に

system "make install"
を追加する。

$ brew install --build-from-source -v eblook
