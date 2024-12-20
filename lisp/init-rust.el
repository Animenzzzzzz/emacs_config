;;; init-rust.el --- Support for the Rust language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'rust-mode)
  (add-to-list 'eglot-server-programs
    '((rust-ts-mode rust-mode) .
        ("rust-analyzer" :initializationOptions (:check (:command "clippy")))))
  (with-eval-after-load 'rust-mode
    (add-hook 'rust-mode-hook 'eglot-ensure)))

(provide 'init-rust)
;;; init-rust.el ends here
