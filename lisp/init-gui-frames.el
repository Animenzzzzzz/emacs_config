;;; init-gui-frames.el --- Behaviour specific to non-TTY frames -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Suppress GUI features
(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq inhibit-startup-screen t)

;; Window size and features
(setq-default
 window-resize-pixelwise t
 frame-resize-pixelwise t)

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))

(menu-bar-mode -1)

(let ((no-border '(internal-border-width . 0)))
  (add-to-list 'default-frame-alist no-border)
  (add-to-list 'initial-frame-alist no-border))

;; Non-zero values for `line-spacing' can mess up ansi-term and co,
;; so we zero it explicitly in those cases.
(add-hook 'term-mode-hook
          (lambda ()
            (setq line-spacing 0)))

;; Change global font size easily
(require-package 'default-text-scale)
(add-hook 'after-init-hook 'default-text-scale-mode)

(require-package 'disable-mouse)

(when (fboundp 'pixel-scroll-precision-mode)
  (pixel-scroll-precision-mode))

(provide 'init-gui-frames)
;;; init-gui-frames.el ends here