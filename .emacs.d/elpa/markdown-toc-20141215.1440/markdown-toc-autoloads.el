;;; markdown-toc-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (markdown-toc/generate-toc markdown-toc/version)
;;;;;;  "markdown-toc" "markdown-toc.el" (21732 48358 619172 110000))
;;; Generated autoloads from markdown-toc.el

(autoload 'markdown-toc/version "markdown-toc" "\
Markdown-toc version.

\(fn)" t nil)

(autoload 'markdown-toc/generate-toc "markdown-toc" "\
Generate a TOC for markdown file at current point.
Deletes any previous TOC.
If called interactively with prefix arg REPLACE-TOC-P, replaces previous TOC.

\(fn &optional REPLACE-TOC-P)" t nil)

;;;***

;;;### (autoloads nil nil ("markdown-toc-pkg.el") (21732 48358 627552
;;;;;;  577000))

;;;***

(provide 'markdown-toc-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; markdown-toc-autoloads.el ends here