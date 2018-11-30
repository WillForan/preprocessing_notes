;;; org-term.el - Support for links to run things in a terminal

(require 'org)

(org-add-link-type "term" 'org-term-open)

(defun run-term (cmd)
  ;(choice (const man) (const woman) cmd)
  ;start-process name buffer-or-name program &rest args
  ;(funcall start-process (append (list "termx" nil "urxvt" "-hold" "-e") (split-string cmd) ) )
  ;(start-process "termx" nil "urxvt" "-hold" "-e" cmd )

  ; this works but dont wnt to hold now that we know it works
  ;(apply 'start-process (append (list "termx" nil "urxvt" "-hold" "-e") (split-string cmd) ) )
  (apply 'start-process (append (list "termx" nil "urxvt" "+hold" "-e") (split-string cmd) ) )
  (message "trying to run: %s" (format "urxvt -e %s" cmd ))
)


(defcustom org-term-command 'run-term
  "The Emacs command to be used to display a man page."
  :group 'org-link
  :type 'run-term-junk)


(defun org-term-open (path)
  "Visit the manpage on PATH.
PATH should be a topic that can be thrown at the man command."
  (funcall org-term-command path))


(provide 'org-term)

;;; org-term.el ends here
