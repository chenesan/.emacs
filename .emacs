;;package list
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

;;c/c++ style
;(add-hook 'c-mode-common-hook' autopair-mode)
(add-hook 'c-mode-common-hook' auto-complete-mode)
(setq-default indent-tabs-mode nil) ;; use spaces instead of tab
(setq-default c-basic-offset 4) ;; set c based language indent to 4
(c-set-offset 'substatement-open 0) ;; add brace with no indent

;;editing .cxxtest file under c++ mode
(setq auto-mode-alist (cons '("\\.cxxtest$" . c++-mode) auto-mode-alist))

;;ace jump mode
(add-to-list 'load-path "~/.emacs.d/elpa/ace-jump-mode-20140616.115/")
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;;trun off unused gui
(custom-set-variables
 '(fringe-mode 0 nil (fringe))
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))

;;set font
(custom-set-faces
 '(default ((t (:family "Verdana" :foundry "microsoft" :slant normal :weight normal :height 180 :width normal)))))
(add-to-list 'default-frame-alist
             '(font . "MonoSpace-18"))

;;disable emacs start-up page
(setq inhibit-startup-message t
inhibit-startup-echo-area-message t)  

;;save minibuffer history
(savehist-mode 1)

;;enable line number on the left side
(global-linum-mode 1)

;;enable ido mode
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
;;start shell
(add-hook 'emacs-startup-hook
  (lambda ()
    (shell)
    ))

;;full screen
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;;color
(add-to-list 'default-frame-alist '(foreground-color . "#E0DFDB"))
(add-to-list 'default-frame-alist '(background-color . "#000000"))

;;flycheck

;;(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
 
;; Enable C++11 support for gcc
(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))

;; emacs for python
(load-file "~/TheCode/emacs-for-python/epy-init.el")

;;cedet
;(require 'cedet)
;;;;  Helper tools.
;(custom-set-variables
; '(semantic-default-submodes (quote (global-semantic-decoration-mode global-semantic-idle-comp;letions-mode
;                                     global-semantic-idle-scheduler-mode global-semanticdb-min;or-mode
;                                     global-semantic-idle-summary-mode global-semantic-mru-boo;kmark-mode)))
; '(semantic-idle-scheduler-idle-time 3))

;(semantic-mode)

;; smart complitions
;(require 'semantic/ia)
;(setq-mode-local c-mode semanticdb-find-default-throttle
;                 '(project unloaded system recursive))
;(setq-mode-local c++-mode semanticdb-find-default-throttle
;                 '(project unloaded system recursive))

;; ess

;(setq load-path (cons "/usr/share/emacs/site-lisp/ess" load-path))
;(require 'ess-site)


