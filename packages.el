;;; package --- Summary
;;; Commentary:
;;
;; lanjoni's Emacs configuration.
;;
;; file: ~/.emacs.d/packages.el
;; author: João Augusto Lissoni Lanjoni <joaoaugustolanjoni@gmail.com>
;; date: Apr 30, 2023

(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/awesome-tab"))

;;; Code:

(require 'package)
(require 'auto-complete)
(require 'corfu)
(require 'flycheck-phpstan)
(require 'flycheck-php-noverify)
(require 'flycheck-ocaml)
(require 'flycheck-crystal)
(require 'flycheck-julia)
(require 'flycheck-clojure)
(require 'flycheck-elixir)
(require 'flycheck-rust)
(require 'projectile)
(require 'all-the-icons)
(require 'lsp-mode)
(require 'evil)
(require 'awesome-tab)

(custom-set-variables
 '(package-archives
   (quote (("gnu" . "https://elpa.gnu.org/packages/")
           ("melpa" . "https://melpa.org/packages/")))))

(package-initialize)

;; Debugging
(defun lsp-install-save-hooks ()
  "Hooks for golang debugging."
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t)
  (lsp))

(add-hook 'go-mode-hook #'lsp-install-save-hooks)
(add-hook 'c-mode-hook #'lsp-install-save-hooks)
(add-hook 'cpp-mode-hook #'lsp-install-save-hooks)
(add-hook 'php-mode-hook #'lsp-install-save-hooks)
(add-hook 'elixir-mode-hook #'lsp-install-save-hooks)
(add-hook 'scala-mode-hook #'lsp-install-save-hooks)
(add-hook 'clojure-mode-hook #'lsp-install-save-hooks)

(with-eval-after-load 'lsp-mode
  (add-to-list 'lsp-language-id-configuration
               '(crystal-mode . "crystal"))
  (lsp-register-client
  (make-lsp-client :new-connection (lsp-stdio-connection '("crystalline"))
                   :activation-fn (lsp-activate-on "crystal")
                   :priority '1
                   :server-id 'crystalline)))

(lsp-register-custom-settings
 '(("gopls.completeUnimported" t t)
   ("gopls.staticcheck" t t)))

;; vendors
(load-file "~/.emacs.d/splash-screen.el")

(provide 'lanjoni-packages)
;;; packages.el ends here
