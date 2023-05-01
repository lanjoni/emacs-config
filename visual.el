;;; package -- Summary
;;; Commentary:
;;
;; lanjoni's Emacs configuration
;;
;; file: ~/.emacs.d/visual.el
;; author: João Augusto Lissoni Lanjoni <joaoaugustolanjoni@gmail.com>
;; Apr 30, 2023

;;; Code:

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(electric-pair-mode 1)
(set-default 'truncate-lines t)
(global-display-line-numbers-mode 1)

(set-face-attribute
 'default nil
 :font "Iosevka Nerd Font Mono"
 :height 130)
(put 'downcase-region 'disabled nil)

(provide 'lanjoni-visual)

;;; visual.el ends here
