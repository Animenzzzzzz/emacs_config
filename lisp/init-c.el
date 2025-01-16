;;; init-c.el --- Support for the C/C++ language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'cc-mode)
  (add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
  (with-eval-after-load 'cc-mode
    (add-hook 'c-mode-hook 'eglot-ensure)
	(add-hook 'c++-mode-hook 'eglot-ensure)
	(add-hook 'before-save-hook 'eglot-format-buffer)))

(provide 'init-c)
;;; init-c.el ends here
