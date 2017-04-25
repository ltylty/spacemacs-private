(defconst tianyuan-packages
  '(multiple-cursors vlf))

(defun tianyuan/init-multiple-cursors()
  (use-package multiple-cursors
    :init
    :config
    )
  )

(defun tianyuan/init-vlf()
  (use-package vlf
    :init
    :config
    )
  )
