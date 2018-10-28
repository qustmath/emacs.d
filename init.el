;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;配置文件模块化
(add-to-list 'load-path "~/.emacs.d/lisp/")
;; Package Management
;; -----------------------------------------------------------------

;;载入emacs编辑器基本设置
(require 'init-emacs)

;;载入ELPA包管理
(require 'init-packages)

;;载入web-mode设置
(require 'init-web-mode)

;;载入abbrev-mode设置
(require 'init-abbrev-mode)

;;载入evil-mode设置
(require 'init-evil-mode)

;;载入evil-magit-mode设置
(require 'init-evil-magit-mode)

;;载入evil-nerd-commenter-mode设置
(require 'init-evil-nerd-commenter-mode)

;;载入neotree设置
(require 'init-neotree)

;;载入常用操作设置
(require 'init-functions)

;;载入org-mode设置
(require 'init-org-mode)

;;待研究插件
;;occur
;;imenu
;;expand-region
;;iedit
;;yasnippet
;;auto-yasnippet
;;flycheck
;;
;;whick-key
;;Company-mode
;;auto-completion

;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; '(package-selected-packages
;   (quote
;    (neotree evil-surround evil-nerd-commenter window-numbering evil evil-leader web-mode)))
; '(tool-bar-mode nil))
;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; )
