;;; package -- Summary
;;; Commentary:
;;
;; lanjoni's Emacs configuration
;;
;; file: ~/.emacs.d/init.el
;; author: João Augusto Lissoni Lanjoni <joaoaugustolanjoni@gmail.com>
;; Apr 30, 2023

;;; Code:

(setq make-backup-files nil)
(setq create-lockfiles nil)

;; Auto refresh
(global-auto-revert-mode t)
(setq-default auto-revert-use-notify nil)

;; Identation & coding style
(setq-default default-tab-width 2)
(setq-default tab-width 2)
(setq-default tab-always-indent t)
(setq-default indent-tabs-mode nil)
(setq-default c-default-style "bsd"
              c-basic-offset 2
              nasm-basic-offset 2
              python-default-offset 2
              python-indent-offset 2
              python-default-offset 2
              python-indent 2
              css-indent-offset 2
              json-encoding-default-indentation 2
              elm-indent-offset 2
              js-indent-level 2
              rust-indent-offset 2)

(define-key global-map (kbd "C-k") 'previous-line)
(define-key global-map (kbd "C-h") 'backward-char)
(define-key global-map (kbd "C-j") 'next-line)
(define-key global-map (kbd "C-l") 'forward-char)

(define-key global-map (kbd "M-t") 'treemacs)
(define-key global-map (kbd "M-f") 'treemacs-project-follow-mode)

;; Zoom
(define-key global-map (kbd "C-=") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; CTRL + Z and CTRL + Shift + Z
(define-key global-map (kbd "C-z") 'undo-only)
(define-key global-map (kbd "C-S-z") 'undo-redo)

;; Shell
(define-key global-map (kbd "C-t") 'eshell)

;; Awesome bindings
(defhydra toki-fast-switch (:hint nil)
  "
 ^^^^Fast Move           | ^^^^^^Tab                | ^^Misc
-^^^^--------------------+-^^^^^^-------------------+-^^---------------------------
   ^_k_^   prev group    | _a_^^^^     select first | _C-k_   kill buffer
 _h_   _l_  switch tab   | _e_^^^^     select last  | _C-S-k_ kill others in group
   ^_j_^   next group    | _C-j_^^^^   ace jump     | ^^
 _0_ ~ _9_ select window | _H_/_L_/_A_ move to      | ^^
-^^^^--------------------+-^^^^^^-------------------+-^^---------------------------
 "
  ("h" awesome-tab-backward-tab)
  ("j" awesome-tab-forward-group)
  ("k" awesome-tab-backward-group)
  ("l" awesome-tab-forward-tab)
  ("0" toki-select-window)
  ("1" toki-select-window)
  ("2" toki-select-window)
  ("3" toki-select-window)
  ("4" toki-select-window)
  ("5" toki-select-window)
  ("6" toki-select-window)
  ("7" toki-select-window)
  ("8" toki-select-window)
  ("9" toki-select-window)
  ("a" awesome-tab-select-beg-tab)
  ("e" awesome-tab-select-end-tab)
  ("C-j" awesome-tab-ace-jump)
  ("H" awesome-tab-move-current-tab-to-left)
  ("L" awesome-tab-move-current-tab-to-right)
  ("A" awesome-tab-move-current-tab-to-beg)
  ("C-k" kill-current-buffer)
  ("C-S-k" awesome-tab-kill-other-buffers-in-current-group)
  ("q" nil "quit"))


(global-set-key (kbd "s-1") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-2") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-3") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-4") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-5") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-6") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-7") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-8") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-9") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-0") 'awesome-tab-select-visible-tab)

;; Ctrl-c Ctrl-v
(cua-mode)

;; Evil mode (VI layer)
(evil-mode 1)

;; Awesome tab
(awesome-tab-mode t)

;; Code completion
(global-flycheck-mode)
(global-company-mode t)
(auto-complete-mode t)

(provide 'lanjoni-workflow)

;;; workflow.el ends here
