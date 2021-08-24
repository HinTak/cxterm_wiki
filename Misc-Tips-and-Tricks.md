## Identifying content encoding

Identifying encoding with `file ...`. "ISO-8859-anything" is basically "European (with accents)"; big5 and gb2312 would also fall under that. 

```
$ file pho*
phone.pdf:       PDF document, version 1.5
phone-gb.txt:    ISO-8859 text
phone-utf8.txt:  UTF-8 Unicode text
```

## conversions

Conversion (from, to, < input , > output):

```
$ iconv -f utf8 -t gb2312 < phone-utf8.txt > phone-gb.txt
```

Sometimes it fails; you can force conversion, dropping unconvertible characters with `-c`:

```
$ iconv -c -f utf8 -t gb2312 < phone-utf8.txt > phone-gb.txt
```

Convert to the much-larger `gb18030` (without `-c`):

```
$ iconv -f utf8 -t gb18030 < phone-utf8.txt > phone-gb18030.txt
```

Then find the difference between the two converted versions with: 

```
$ diff -a phone-gb.txt phone-gb18030.txt | grep -a '^<'
```

The above means, find "a"ll differences between two files, even if non-ascii. The output would be prefixed with "<" and ">"
for lines differing. Extract any lines which begins ("^") with "<", again "a"ll lines even if non-ascii. We want the dropped version
since the gb18030 lines (extract by '^>') won't display under cxterm either.

## emacs

In the cxterm source distribution, there is a emacs lisp file `cxterm/emacs/cemacs.el`, which sets up emacs to co-operate with cxterm. So typically you do `... -nw -l emacs/cemacs.el ...` (`-nw` means no-new-windows, i.e. run inside existing terminal):

```
$ emacs ... [other options] ... -nw -l emacs/cemacs.el ... [other options and arguments] ...
```

To pursuade the GUI emacs (without `-nw`) to interprete iso-8859-X files as GB2312 or Big5:

```
$ LANG=zh_CN.GB2312 emacs phone-gb.txt
$ LANG=zh_TW.Big5 emacs phone-big5.txt
```

## Apache Web Server

In `/etc/httpd/conf/httpd.conf` (server-wide, Apache 2.4.48 on Fedora), or `.htaccess` (per-directory):

```
AddDefaultCharset GB2312
```

To get "*.txt" files be shown as GB2312 on web browers. The default is `Content-Type: text/html; charset=iso-8859-1` in the HTTP header.
See [a related Apache bugzilla issue](https://bz.apache.org/bugzilla/show_bug.cgi?id=23421) for background information.
