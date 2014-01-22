;; File name: fay.el
;; Contain some configure of emacs of user fay

;; emacs theme: monokai
;;(add-to-list 'load-path "~/.emacs.d/elpa/color-theme-6.5.5")
;;(require 'color-theme)
(add-to-list 'load-path "~/.emacs.d/elpa/monokai-theme-0.0.10")
(require 'monokai-theme)

;; Some setting from "Making Emacs withe emacs-starter-kit a little more friendly"
;; turn off the menu bar, tool bar and scroll bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; set default font
(set-default-font "consolas")
(set-face-attribute 'default (selected-frame) :height 140)

;; File header
;; (add-to-list 'load-path "~/.emacs.d/elpa/header2-21.0")
;; (require 'header2)
;; (require 'header2-autoloads)
(add-hook 'write-file-hooks 'auto-update-file-header)
(add-hook 'emacs-lisp-mode-hook 'auto-make-header)
(add-hook 'c-mode-common-hook   'auto-make-header)

;; Auto pair brackets
(add-to-list 'load-path "~/.emacs.d/elpa/autopair-0.3")
(require 'autopair)
(autopair-global-mode 1)
(setq autopair-autowrap t)

;; ECB
(add-to-list 'load-path "~/.emacs.d/elpa/ecb-2.40")
(load-file "~/.emacs.d/elpa/ecb-2.40/ecb.el")
(require 'ecb)
(require 'ecb-autoloads)
(setq stack-trace-on-error t)

;; Etags
(setq path-to-ctags "c:/ctags58") ;; <- your ctags path here
(defun create-tags (dir-name)
    "Create tags file."
    (interactive "DDirectory: ")
    (shell-command
     (format "ctags -f %s -e -R %s" path-to-ctags (directory-file-name dir-name)))
  )

;; Yasnippet
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-0.8.0")
(add-to-list 'load-path "~/.emacs.d/elpa/popup-0.5")
(require 'yasnippet)
(require 'yasnippet-autoloads)
(yas-global-mode 1)

;; Auto-complete
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-1.4")
(require 'auto-complete)

;; Org-mode settings
(add-to-list 'exec-path "C:/Program Files (x86)/Aspell/bin/")
(setq ispell-program-name "aspell")
;;(setq flyspell-issue-welcome-flag nil)

(message "All done!")
