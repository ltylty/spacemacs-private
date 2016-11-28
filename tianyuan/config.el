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

;; 自动换行
(add-hook 'org-mode-hook
          (lambda () (setq truncate-lines nil)))
