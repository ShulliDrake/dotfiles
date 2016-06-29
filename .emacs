(let ((default-directory "/usr/local/share/emacs/site-lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

(add-to-list 'load-path "~/.emacs.d/vendor")

(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$'" . js2-mode))
(setq js2-basic-offset 2)
(autoload 'css-mode "css-mode" "Mode for editing CSS files" t)
;;(require 'mustache-mode)
(require 'php-mode)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))
(setq js-indent-level 2)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-markup-indent-offset 2)

(set-face-foreground 'font-lock-comment-face "red")

(setq indent-tabs-mode nil)
(setq tab-width 2)
(setq c-basic-indent 2)
(setq js-indent-level 2)


;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))
