;;; packages.el --- es-mode layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Kevin Sonney <kevin@sonnney.com>
;; URL: https://github.com/ksonney/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `es-mode/init-es-mode' to load and initialize the package.

;;; Code:

(defconst es-mode-packages
  '(
    (es-mode))
)

(defun es-mode/init-es-mode ()
  (use-package es-mode
    :config
      (add-to-list 'auto-mode-alist '("\\.es$" . es-mode))
      (add-hook 'es-result-mode-hook 'hs-minor-mode)
  )
)
;;; packages.el ends here
