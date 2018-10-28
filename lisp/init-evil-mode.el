(global-evil-leader-mode)
(evil-mode 1)
(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)
(require 'evil-magit)
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
  "0"  'select-window-0
  "1"  'select-window-1
  "2"  'select-window-2
  "3"  'select-window-3
  "w/" 'split-window-right
  "w-" 'split-window-below
  "wd" 'delete-window
  "wo" 'delete-other-windows
  "mw" 'web-mode
  "bz" 'hs-hide-block
  "bs" 'hs-show-block
  "az" 'hs-hide-all
  "as" 'hs-show-all
  "lz" 'hs-hide-level
  "iD" 'insert-current-date
  "id" 'insert-current-datetime
  "it" 'insert-current-time
  ;;  ":"  'counsel-M-x
  "gs" 'magit-status
)

;;进入php-mode开启hs折叠
;;(load-library "hideshow")
;(add-hook 'php-mode-hook 'hs-minor-mode)

;;窗口编号，配合evil-leader使用
(window-numbering-mode 1)

;;开启evil-surround  ;;好像无需(require 'evil-surround)
(global-evil-surround-mode 1)

;;evil-nerd-commenter Emacs key bindings
;;(global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
;;(global-set-key (kbd "C-c l") 'evilnc-quick-comment-or-uncomment-to-the-line)
;;(global-set-key (kbd "C-c c") 'evilnc-copy-and-comment-lines)
;;(global-set-key (kbd "C-c p") 'evilnc-comment-or-uncomment-paragraphs)
(evil-leader/set-key
  ;;evil-nerd-commenter
  "ci" 'evilnc-comment-or-uncomment-lines                  ;;注释/取消注释行。这里命令支持负数参数。
  "ct" 'evilnc-comment-or-uncomment-to-the-line            ;;对指定行的注释。
  "cl" 'evilnc-quick-comment-or-uncomment-to-the-line      ;;注释/取消注释当前行到用户指定行。
                                                           ;;你可以输入rightest数字来指定行号,例如假定当前行号为 497.
                                                           ;;C-u 3 M-x evilnc-quick-comment-or-uncomment-to-the-line
                                                           ;;将对行 503进行注释，因为" 503"的rightest数字为 3 。
  "cc" 'evilnc-copy-and-comment-lines                      ;;复制和粘贴线条，然后注释原始线条。 这里命令支持负数参数。
  "cp" 'evilnc-comment-or-uncomment-paragraphs             ;;注释/取消注释由空行分隔的段落
  ;; "pt" 'evilnc-copy-to-line                                ;;从当前行复制到用户指定行。
  ;; "cr" 'comment-or-uncomment-region
  ;; "cv" 'evilnc-toggle-invert-comment-line-by-line
  ;; "." 'evilnc-copy-and-comment-operator
  ;; "," 'evilnc-comment-operator
)


(provide 'init-evil-mode)

