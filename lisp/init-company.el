;;; init-company.el --- Support for the Rust language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (require-package 'company)
  (add-hook 'after-init-hook 'global-company-mode)
  (setq company-tooltip-align-annotations t)
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0.0)
  (setq company-transformers '(company-sort-by-occurrence)))
(provide 'init-company)
;;; init-company.el ends here

