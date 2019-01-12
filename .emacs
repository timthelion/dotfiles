(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(define-key evil-motion-state-map "j" 'next-line)
(define-key evil-motion-state-map "k" 'previous-line)

(setq-default indent-tabs-mode nil)
 
(require 'haskell-mode)
(require 'whitespace)

(visual-line-mode 1)

(defun lhs nil
  "Enter Literate haskell mode."
  (interactive)
  (literate-haskell-mode)
  (whitespace-mode)
  (show-paren-mode))

(menu-bar-mode nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Nimbus Mono L" :foundry "urw" :slant normal :weight normal :height 218 :width normal)))))
