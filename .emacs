(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/weibo.emacs/")
(add-to-list 'load-path "~/.emacs.d/w3m")
(require 'weibo)
(add-to-list 'exec-path "/opt/local/bin")
(require 'w3m-load)
(set-background-color "black") ;; 使用黑色背景
(set-foreground-color "white") ;; 使用白色前景

(set-face-foreground 'region "red")  ;; 区域前景颜色设为红色
(set-face-background 'region "blue") ;; 区域背景色设为蓝色
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)))
(color-theme-ahei)
(setq
    backup-by-copying t ; 自动备份
    backup-directory-alist
    '(("." . "~/.saves")) ; 自动备份在目录"~/.saves"下
    delete-old-versions t ; 自动删除旧的备份文件
    kept-new-versions 6 ; 保留最近的6个备份文件
    kept-old-versions 2 ; 保留最早的2个备份文件
    version-control t) ; 多次备份

(tool-bar-mode nil);;禁用工具栏
(menu-bar-mode nil);;禁用菜单栏，F10 开启关闭菜单
(setq w3m-default-display-inline-images t);;默认显示图片
(windmove-default-keybindings);;用shift键加方向键切换窗格
(setq visible-bell t);;关闭烦人的出错时的提示声。
(setq inhibit-startup-message t);;关闭起动时的那个“开机画面”。
(setq column-number-mode t) ;;显示列号
(setq kill-ring-max 200);;用一个很大的 kill ring
(setq default-fill-column 60);;把 fill-column 设为 60. 这样的文字更好读
(setq-default indent-tabs-mode nil)
(setq default-tab-width 8)
(setq tab-stop-list ())
(loop for x downfrom 40 to 1 do
      (setq tab-stop-list (cons (* x 4) tab-stop-list)));;不用 TAB 字符来indent
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil);;设置 sentence-end 可以识别中文标点。不用在 fill 时在句号后插 入两个空格。
(setq enable-recursive-minibuffers t);;可以递归的使用 minibuffer
(setq scroll-margin 3
      scroll-conservatively 10000);;防止页面滚动时跳动
(scroll-bar-mode nil);;去掉滚动条
(setq default-major-mode 'text-mode);;把缺省的 major mode 设置为 text-mode, 而不是几乎什么功能也 没有的 fundamental-mode.
(show-paren-mode t)
(setq show-paren-style 'parentheses);;括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号。
(mouse-avoidance-mode 'animate);;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。
(setq frame-title-format "emacs@%b");;在标题栏显示buffer的名字，而不是 emacs@wangyin.com 这样没用 的提示。
(auto-image-file-mode);;让 Emacs 可以直接打开和显示图片。
(global-font-lock-mode t);;进行语法加亮。
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'LaTeX-hide-environment 'disabled nil);;把这些缺省禁用的功能打开。
(setq version-control t)
(setq kept-new-versions 3)
(setq delete-old-versions t)
(setq kept-old-versions 2)
(setq dired-kept-versions 1);;设置一下备份时的版本控制，这样更加安全。
(setq user-full-name "zh3linux")
(setq user-mail-address "alp333yue@gmail.com")
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top);;让 dired 可以递归的拷贝和删除目录。
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(global-set-key (kbd "M-0") 'other-window)


(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)
(require 'yasnippet-bundle)

;; NOw auto-complete-config is enabled!
;; python-mode settings
(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist(cons '("python" . python-mode)
interpreter-mode-alist))
;; path to the python interpreter, e.g.: ~rw/python27/bin/python2.7
(setq py-python-command "python")
(autoload 'python-mode "python-mode" "Python editing mode." t)

;; pymacs settings
(setq pymacs-python-command py-python-command)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-exec "pymacs" nil t)
(require 'pycomplete)
(pymacs-load "ropemacs" "rope-")
;;(setq ropemacs-enable-autoimport t)
(require 'org)
 (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
 (define-key global-map "\C-cl" 'org-store-link)
 (define-key global-map "\C-ca" 'org-agenda)
 (setq org-log-done t)
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
