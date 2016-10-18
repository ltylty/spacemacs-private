;;shortcut
(define-prefix-command 'ctl-t-map)
(global-set-key (kbd "C-t") 'ctl-t-map)
(global-set-key (kbd "M-m") 'set-mark-command)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "C-t C-k") 'kill-whole-line)
(global-set-key (kbd "C-t C-q") 'goto-last-change)

;;multiple-cursors
(global-set-key (kbd "C-t n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-t p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-t a") 'mc/mark-all-like-this)
(global-set-key (kbd "C-t l") 'mc/edit-lines)
