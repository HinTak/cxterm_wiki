# Keyboard mapping in X11

The simpliest way of disabling the NumLock key, and have it always on, is via
the `numpad:mac` xkb option:

```
$ gsettings get org.gnome.desktop.input-sources xkb-options
['lv3:ralt_switch']
[Hin-Tak@localhost cxterm.wiki]$ gsettings set org.gnome.desktop.input-sources xkb-options "['lv3:ralt_switch', 'numpad:mac']"
```

See `/usr/share/X11/xkb/types/numpad` and `/usr/share/X11/xkb/types/extra`.

Via `gnome-tweaks`:

![gnome-tweaks](Screenshot from 2021-09-01 01-50-37.png)

via `dconf-editor`:

![Download from HP](Screenshot from 2021-09-01 01-54-48.png)

[Bug 873656 - .Xmodmap file not loaded by Gnome 3.x](https://bugzilla.redhat.com/show_bug.cgi?id=873656) - in Gnome 3.6 onwards,
the settings are forgotten after every suspend/resume; it become invalid when you switch to next ibus input method.

systemd config - /etc/vconsole.conf

/etc/X11/xorg.conf.d/00-keyboard.conf

/usr/share/X11/xkb/rules/base.lst , /usr/share/X11/xkb/

keymaps(5), loadkeys(1), dumpkeys(1), showkey(1), xmodmap(1), xkeyboard-config(7)
/usr/lib/kbd/keymaps/

[Gentoo keyboard layout switching](https://wiki.gentoo.org/wiki/Keyboard_layout_switching),

[Freedesktop Shared default keyboard shortcuts](https://www.freedesktop.org/wiki/Specifications/default-keys-spec/),
[Gnome HIG Standard Keyboard Shortcuts](https://developer.gnome.org/hig/reference/keyboard.html),
[GNOME keyboard shortcuts](https://www.redhat.com/sysadmin/gnome-keyboard-shortcuts),
[GNOME 3 Cheat Sheet](https://wiki.gnome.org/Gnome3CheatSheet),
[Cheat sheet: GNOME 3](https://opensource.com/downloads/cheat-sheet-gnome-3)