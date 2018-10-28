(global-evil-leader-mode)
(evil-mode 1)
(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)
(setq evil-leader/leader "<SPC>")
(evil-leader/set-key
  "ff" 'find-file
  "fr" 'recentf-open-files
  "fs" 'save-buffer
  "qs" 'save-buffers-kill-emacs
  "qc" 'kill-emacs
  "bb" 'switch-to-buffer
  "bk" 'kill-buffer
  "bw" 'quit-window
  "mw" 'web-mode
  "bz" 'hs-hide-block
  "bs" 'hs-show-block
  "az" 'hs-hide-all
  "as" 'hs-show-all
  "lz" 'hs-hide-level
  ;;  ":"  'counsel-M-x
)

;;进入php-mode开启hs折叠
;;(load-library "hideshow")
;(add-hook 'php-mode-hook 'hs-minor-mode)

;;窗口编号，配合evil-leader使用
(window-numbering-mode 1)
(evil-leader/set-key
  "1"  'select-window-1
  "2"  'select-window-2
  "3"  'select-window-3
  "4"  'select-window-4
  "w/" 'split-window-right
  "w-" 'split-window-below
  "wd" 'delete-window
  "wo" 'delete-other-windows
)

;;开启evil-surround  ;;好像无需(require 'evil-surround)
(global-evil-surround-mode 1)

;;evil-nerd-commenter Emacs key bindings
;;(global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
;;(global-set-key (kbd "C-c l") 'evilnc-quick-comment-or-uncomment-to-the-line)
;;(global-set-key (kbd "C-c c") 'evilnc-copy-and-comment-lines)
;;(global-set-key (kbd "C-c p") 'evilnc-comment-or-uncomment-paragraphs)

(provide 'init-evil-mode)

