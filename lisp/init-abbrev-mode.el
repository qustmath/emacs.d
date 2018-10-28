;;使用下面的代码我们可以开启 abbrev 模式并定义一个缩写表，
;;每当我们输入下面的缩写 并以空格结束时，Emacs 就会将其自动展开成为我们所需要的字符串。
(setq-default abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; Shifu
					    ("czx" "陈振兴")
					    ;; Tudi
					    ("zx" "chenzhenxing")
					    ))
(provide 'init-abbrev-mode)
