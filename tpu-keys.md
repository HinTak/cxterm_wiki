# Annotated .tpu-keys 

The tpu-mapper generated file seems buggy, and maps GOLD-GOLD to `'keyboard-quit`:

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
