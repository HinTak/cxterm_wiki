
emacs 25:

```
From 4982861a08d0ec3262a0b68ff699920bb2938c40 Mon Sep 17 00:00:00 2001
From: Glenn Morris <rgm@gnu.org>
Date: Sun, 1 Jun 2014 18:02:21 -0700
Subject: [PATCH] Make some old emulation modes obsolete

Ref: http://lists.gnu.org/archive/html/emacs-devel/2014-05/msg00502.html

* lisp/emulation/crisp.el, lisp/emulation/tpu-edt.el:
* lisp/emulation/tpu-extras.el, lisp/emulation/tpu-mapper.el:
* lisp/emulation/vi.el, lisp/emulation/vip.el, lisp/emulation/ws-mode.el:
Move to obsolete/.

* doc/emacs/ack.texi (Acknowledgments): Remove some obsolete items.

* doc/emacs/misc.texi (Emulation): Remove section.

* doc/lispintro/emacs-lisp-intro.texi (Autoload): Update loaddefs.el details.

* doc/misc/efaq.texi (Finding a package with particular functionality):
Update example.

* doc/misc/vip.texi: Mention this is obsolete.

* etc/NEWS: Mention this.
```
