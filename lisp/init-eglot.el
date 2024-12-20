;;; init-eglot.el --- LSP support via eglot -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(when (maybe-require-package 'eglot)
  ;; 确保 eglot-server-programs 变量已定义
  (defvar eglot-server-programs nil)
  (maybe-require-package 'consult-eglot))



(provide 'init-eglot)
;;; init-eglot.el ends here
