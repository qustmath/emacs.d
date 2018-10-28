(when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
		      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

 ;; cl - Common Lisp Extension
 (require 'cl)

 ;; Add Packages
 (defvar my/packages '(
		;; --- Auto-completion ---
		;;company
		;; --- Better Editor ---
		;;hungry-delete
		;;swiper
		;;counsel
		;;smartparens
                ;; --- Major Mode ---
		;;org-mode 内置
		web-mode
		evil
		evil-leader
		evil-surround
		window-numbering
		evil-nerd-commenter
		neotree
		magit
		evil-magit
		;;php-mode
		;;js2-mode

		;; --- Minor Mode ---
		;;hs-minor-mode 内置
		;;nodejs-repl
		;;exec-path-from-shell
		;; --- Themes ---
		;;monokai-theme
		;; solarized-theme
		) "Default packages")

 (setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

(provide 'init-packages)
