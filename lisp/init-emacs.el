;;关闭工具栏
(tool-bar-mode -1)

;;关闭菜单栏
(menu-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;;高亮当前行
(global-hl-line-mode 1)

;;启用自动括号匹配（Highlight Matching Parenthesis）
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)


;;可以禁止自动生成备份文件
(setq make-backup-files nil)

;;关闭自己生产的保存文件
(setq auto-save-default nil)

;;自动加载外部修改过的文件。
(global-auto-revert-mode 1)

;;加入最近打开过文件的选项让我们更快捷的在图形界面的菜单中打开最近 编辑过的文件。
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
;; 这个快捷键绑定可以用之后的插件 counsel 代替
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;;设置为开启默认全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;;关闭 Emacs 中的警告音
(setq ring-bell-function 'ignore)


;;;; Windows Set START
;;中英文使用不同字体
;(defun set-font (english chinese english-size chinese-size)
;  (set-face-attribute 'default nil :font
;                      (format   "%s:pixelsize=%d"  english english-size))
;  (dolist (charset '(kana han symbol cjk-misc bopomofo))
;    (set-fontset-font (frame-parameter nil 'font) charset
;                      (font-spec :family chinese :size chinese-size))))
;(set-font   "Source Code Pro" "微软雅黑" 18 16)
;; 设置垃圾回收，在Windows下，emacs25版本会频繁出发垃圾回收，所以需要设置 
;(when (eq system-type 'windows-nt) 
;      (setq gc-cons-threshold (* 512 1024 1024)) 
;      (setq gc-cons-percentage 0.5) 
;      (run-with-idle-timer 5 t #'garbage-collect) 
      ;; 显示垃圾回收信息，这个可以作为调试用
      ;; (setq garbage-collection-messages t)
;)
;;;; Windows Set END

;;编码设置
;;Default coding system (for new files)      默认buffer编码是utf-8,(写文件)
(setq default-buffer-file-coding-system 'utf-8)         
;;指定文件编码,此时buffer新建和读取都默认是utf-8,也可以M-x prefer-coding-system 只执行一次
(prefer-coding-system 'utf-8)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(tool-bar-mode nil))

;;将删除功能配置成与其他图形界面的编辑器相同，即当你选中一段文字 之后输入一个字符会替换掉你选中部分的文字。
;;(delete-selection-mode 1)

;; 更改光标的样式（不能生效，解决方案见第二集）
;;(setq cursor-type 'bar)

;;popwin 插件可以自动将光标移动到，新创建的窗口中。使用下面的代码将其启用(尚未安装）
;;(require 'popwin)
;;(popwin-mode 1)

;;每一次当 Emacs 需要与你确认某个命令时需要输入(yes or no) 比较麻烦，所有我们可以使用下面的代码，设置一个别名将其简化为只输入 (y or n) 。
;;(fset 'yes-or-no-p 'y-or-n-p)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;; 关闭缩进 (第二天中被去除)
;; (electric-indent-mode -1)

;; 更改显示字体大小 16pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 160)

(provide 'init-emacs)
