#!/bin/sh

iconv -c -f gb18030 -t utf8 ${1} > /tmp/${$}-1
iconv -c -f gb2312 -t utf8 ${1} > /tmp/${$}-2

diff /tmp/${$}-1 /tmp/${$}-2
