(defmacro oct/generate-theme (theme bg bg+ pri sec alert cur fill comm fg fg+)

	(custom-theme-set-faces
	 theme
	 `(default ((t (:background ,bg :foreground ,fg))))

	 ;; ui
	 `(cursor ((t (:background ,cur))))
	 `(fringe ((t (:foreground ,bg))))
	 ;; line numbers
	 `(line-number ((t (:background ,bg :foreground ,comm))))
	 `(linum ((t (:background ,bg :foreground ,bg+))))
	 `(line-number-current-line ((t (:background ,bg :foreground ,fg+))))
	 `(line-number-major-tick ((t (:background ,bg :foreground ,fg))))
	 `(line-number-minor-tick ((t (:background ,bg :foreground ,fg))))
	 ;; modeline
	 `(mode-line ((t (:background ,bg+ :foreground ,fg :box))))
	 ;; `(mode-line-buffer-id)
	 ;; `(mode-line-emphasis )
	 ;; `(mode-line-highlight)
	 ;; `(mode-line-inactive )
	 `(mode-line-inactive ((t (:background ,bg+ :foreground ,fg+ :box))))
	 ;; editor faces
	 `(font-lock-builtin-face ((t (:foreground ,fill))))
	 `(font-lock-comment-face ((t (:foreground ,comm :slant italic))))
	 `(font-lock-comment-delimiter-face ((t (:foreground ,comm :slant italic))))
	 `(font-lock-constant-face ((t (:foreground ,alert))))
	 `(font-lock-function-name-face ((t (:foreground ,pri))))
	 `(font-lock-keyword-face ((t (:foreground ,sec))))
	 `(font-lock-doc-face ((t (:foreground ,fg+))))
	 `(font-lock-string-face ((t (:foreground ,fg+))))
	 `(font-lock-negation-char-face ((t (:foreground ,fg))))
	 `(font-lock-preprocessor-face ((t (:foreground ,alert))))
	 `(font-lock-regexp-grouping-backslash ((t (:foreground ,fg+))))
	 `(font-lock-regexp-grouping-construct ((t (:foreground ,fg))))
	 `(font-lock-type-face ((t (:foreground ,pri))))
	 `(font-lock-variable-name-face ((t (:foreground ,sec))))
	 `(font-lock-warning-face ((t (:foreground ,cur))))
	 ;; highlight
	 `(region ((t (:background ,bg+ :foreground ,fg))))
	 `(highlight ((t (:inherit region))))
	 `(isearch ((t (:background ,pri :foreground ,bg))))
	 `(isearch-fail ((t (:background ,alert :foreground ,bg))))
	 `(lazy-highlight ((t (:inherit region))))

	 ;; evil
	 
	 `(evil-ex-commands ((t (:foreground ,pri))))
	 `(evil-ex-info ((t (:foreground ,bg+))))
	 ;; `(evil-ex-lazy-highlight
	 ;; `(evil-ex-search
	 ;; `(evil-ex-substitute-matches
	 ;; `(evil-ex-substitute-replacement

	 ;; misc
	 `(link ((t (:foreground ,sec))))
	 `(link-visited ((t (:foreground ,sec))))
	 `(error ((t (:foreground ,alert))))))

(provide 'generate-theme)
