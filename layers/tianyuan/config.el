;; 编辑时覆盖选中区域
(delete-selection-mode 1)
;; org自动缩进
(setq org-startup-indented t)

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

;; org自动换行
(add-hook 'org-mode-hook
          (lambda () (setq truncate-lines nil)))

;; org截图
(defun org-paste-screenshot ()
  (interactive)
  (setq filename
        (concat (format-time-string "%Y%m%d_%H%M%S") ".jpg"))
  (call-process "e:\\APP\\IrfanView\\i_view64.exe" nil nil nil (concat "/clippaste /convert=" filename))
  (insert (concat "[[file:" filename "]]"))
  (org-display-inline-images))
