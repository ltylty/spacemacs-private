;;; funcs.el --- Better Emacs Defaults Layer key bindings File
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;shortcut
(define-prefix-command 'ctl-t-map)
(global-set-key (kbd "C-t") 'ctl-t-map)
(global-set-key (kbd "M-m") 'set-mark-command)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "C-t a") 'beginning-of-buffer)
(global-set-key (kbd "C-t e") 'end-of-buffer)
(global-set-key (kbd "C-t k") 'kill-whole-line)
(global-set-key (kbd "C-t q") 'goto-last-change)

;;multiple-cursors
(global-set-key (kbd "C-t C-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-t C-p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-t C-a") 'mc/mark-all-like-this)
(global-set-key (kbd "C-t C-l") 'mc/edit-lines)
