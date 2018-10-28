;;insert-current-date
(defun insert-current-date ()
    "Insert the current date"
    (interactive "*")
    ;(insert (format-time-string "%Y/%m/%d %H:%M:%S" (current-time))))
    (insert (format-time-string "[%Y/%m/%d]" (current-time))))
    (global-set-key "\C-xD" 'insert-current-date)


;;insert-current-time
(defun insert-current-time ()
    "Insert the current time"
    (interactive "*")
    ;(insert (format-time-string "%Y/%m/%d %H:%M:%S" (current-time))))
    (insert (format-time-string "[%H:%M:%S]" (current-time))))
    (global-set-key "\C-xt" 'insert-current-time)

;;insert-current-datetime
(defun insert-current-datetime ()
    "Insert the current date"
    (interactive "*")
    (insert (format-time-string "[%Y/%m/%d %H:%M]" (current-time))))
    (global-set-key "\C-xd" 'insert-current-datetime)


(evil-leader/set-key
  "iD" 'insert-current-date
  "id" 'insert-current-datetime
  "it" 'insert-current-time
)


(provide 'init-functions)
