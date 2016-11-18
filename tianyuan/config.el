
;;编辑时覆盖选中区域
(delete-selection-mode 1)

;; copy region or whole line
(global-set-key "\M-w"
                (lambda ()
                  (interactive)
                  (if mark-active
                      (kill-ring-save (region-beginning)
                                      (region-end))
                    (progn
                      (kill-ring-save (line-beginning-position)
                                      (line-end-position))
                      (message "copied line")))))

;;org导出markdown
(setq org-export-backends (quote (ascii html icalendar latex md)))
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
