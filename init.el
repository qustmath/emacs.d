;; �رչ�������tool-bar-mode ��Ϊһ�� Minor Mode

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;�����ļ�ģ�黯
(add-to-list 'load-path "~/.emacs.d/lisp/")
;; Package Management
;; -----------------------------------------------------------------

;;����emacs�༭����������
(require 'init-emacs)

;;����ELPA������
(require 'init-packages)

;;����web-mode����
(require 'init-web-mode)

;;����abbrev-mode����
(require 'init-abbrev-mode)

;;����evil-mode����
(require 'init-evil-mode)

;;����evil-magit-mode����
(require 'init-evil-magit-mode)

;;����evil-nerd-commenter-mode����
(require 'init-evil-nerd-commenter-mode)

;;����neotree����
(require 'init-neotree)

;;���볣�ò�������
(require 'init-functions)

;;����org-mode����
(require 'init-org-mode)

;;���о����
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
