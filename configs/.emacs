;;; XEmacs backwards compatibility file
;(setq user-init-file
;      (expand-file-name "init.el"
;			(expand-file-name ".xemacs" "~")))
;(setq custom-file
;      (expand-file-name "custom.el"
;			(expand-file-name ".xemacs" "~")))

;(load-file user-init-file)
;(load-file custom-file)


; VIP stuff: candidate for deletion if it winds up being bad
; Use vi mode.  Remove this line for plain emacs.
;(setq term-setup-hook 'vip-mode)

; Hide because dangerous in vi mode
;(global-unset-key "\e\e")

; Turn off binding of colon to eval
;(put 'eval-expression 'disabled nil) 

; Interferes with input mode switching, alas
;(global-unset-key (kbd "C-SPC"))

(push (expand-file-name "~/.el") load-path)

(autoload 'matlab-mode "matlab.el" "Enter Matlab mode." t)
(autoload 'javascript-mode "javascript-mode.el" "Enter JSON mode." t)
(autoload 'json-mode "json-mode.el" "Enter JSON mode." t)
(autoload 'chuck-mode "chuck.el" "Enter Chuck mode." t)
(autoload 'stan-mode "stan-mode.el" "Enter Stan mode." t)
(require 'protobuf-mode)
(require 'ess-site)
(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

(setq auto-mode-alist
      (append '(("\\.m$"     . matlab-mode))
	            auto-mode-alist))
(setq auto-mode-alist
      (append '(("\\.ck$"     . chuck-mode))
	            auto-mode-alist))
(setq auto-mode-alist
      (append '(("\\.json$"     . json-mode))
	            auto-mode-alist))
(setq auto-mode-alist
      (append '(("\\.prototxt$"     . protobuf-mode))
	            auto-mode-alist))
(setq auto-mode-alist
      (append '(("\\.stan$"     . stan-mode))
	            auto-mode-alist))

(setq-default indent-tabs-mode nil)

(global-font-lock-mode 1)

(set-face-foreground 'font-lock-comment-face "DarkGreen")
;(set-face-foreground 'font-lock-comment-face 0)
(set-face-foreground 'font-lock-variable-name-face "bisque2");dimgray
(set-face-foreground 'font-lock-string-face "DarkOrchid")
(set-face-foreground 'font-lock-keyword-face "LightBlue")
(set-face-foreground 'font-lock-function-name-face "Yellow")
(set-face-foreground 'font-lock-type-face "Red")
;(set-face-underline 'font-lock-function-name-face 1)

(menu-bar-mode 0)
(global-set-key "\C-g" 'goto-line)
(column-number-mode 1)
;(lazy-lock-mode)
;(setq font-lock-support-mode 'lazy-lock-mode)

(custom-set-faces
  ;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 )

(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(lazy-lock-defer-time 0.02))

(global-set-key "\C-x " 'just-one-space)
(global-set-key "\C-xc" 'comment-region)

(fset 'forward-eight
   "\C-[OC\C-[OC\C-[OC\C-[OC\C-[OC\C-[OC\C-[OC\C-[OC")
(fset 'backward-eight
   "\C-[OD\C-[OD\C-[OD\C-[OD\C-[OD\C-[OD\C-[OD\C-[OD")
(fset 'up-eight
   "\C-[OA\C-[OA\C-[OA\C-[OA\C-[OA\C-[OA\C-[OA\C-[OA\C-l")
(fset 'down-eight
   "\C-[OB\C-[OB\C-[OB\C-[OB\C-[OB\C-[OB\C-[OB\C-[OB\C-l")
(global-set-key "\M-\C-[OC" 'forward-eight)
(global-set-key "\M-\C-[OD" 'backward-eight)
(global-set-key "\M-\C-[OA" 'up-eight)
(global-set-key "\M-\C-[OB" 'down-eight)

(fset 'equation-split
   "\\begin{equation}\C-j\C-[OD\C-d\
\\begin{split}\C-j\C-[OD\C-d\
\\end{split}\C-j\C-[OD\C-d\
\\end{equation}\C-[OA\C-[OA")
(global-set-key "\C-xg" 'equation-split)

(fset 'fprint
   "fprintf(stderr, \"")
(global-set-key "\C-xp" 'fprint)

(fset 'comment-line
   "\C-a\C-@\C-[OB\C-c\C-c\C-[OA")
(global-set-key "\C-cl" 'comment-line)

(global-set-key "\M-l" 'call-last-kbd-macro)
