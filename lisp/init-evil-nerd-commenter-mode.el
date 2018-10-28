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

(provide 'init-evil-nerd-commenter-mode)
