# Annotated .tpu-keys 

The tpu-mapper generated file seems buggy, and maps GOLD-GOLD to `'keyboard-quit`; and `[backspace]` to `'tpu-next-beginning-of-line`:

```
$ diff -u ~/.tpu-keys~ ~/.tpu-keys
--- /home/Hin-Tak/.tpu-keys~	2021-09-02 04:41:41.905198846 +0100
+++ /home/Hin-Tak/.tpu-keys	2021-09-03 00:00:01.084585312 +0100
@@ -48,7 +48,7 @@
 
 ;;  GOLD PF keys
 ;;
-(define-key tpu-gold-map [clear] 'keyboard-quit)
+;(define-key tpu-gold-map [clear] 'keyboard-quit)
 (define-key tpu-gold-map [kp-divide] 'help-for-help)
 (define-key tpu-gold-map [kp-multiply] 'tpu-search)
 (define-key tpu-gold-map [kp-subtract] 'tpu-undelete-lines)
```

On my system, depends on the numlock positions, these keysyms are generated:

```
kp-0            kp-insert
kp-1            kp-end
kp-2            kp-down
kp-3            kp-next
kp-4            kp-left
kp-5            kp-begin
kp-6            kp-right
kp-7            hp-home
kp-8            kp-up
kp-9            kp-prior
kp-decimal      kp-delete
```