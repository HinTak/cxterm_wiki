(setq inhibit-startup-screen t)
;;
(set-language-environment "Chinese-GB")
(prefer-coding-system 'gb2312)
(set-default-coding-systems 'gb2312)
(set-buffer-file-coding-system 'gb2312) ;; to save or revisit the file in the current buffer

;; New file default:

;; backwards compatibility as default-buffer-file-coding-system
;; is deprecated in 23.2.
(if (boundp 'buffer-file-coding-system)
    (setq-default buffer-file-coding-system 'gb2312)
  (setq default-buffer-file-coding-system 'gb2312))

(require 'tpu-edt) (tpu-edt-on)

(define-key tpu-gold-map "\\" 'toggle-input-method)

;(define-key tpu-global-map [backspace] 'tpu-delete-current-char)


(set-foreground-color "#000000")
(set-background-color "#57EFBE")
