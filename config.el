(setq user-full-name "Aaron Strick"
      user-mail-address "aaronstrick@gmail.com")

(setq doom-font (font-spec :family "Fira Code" :size 14))

(setq doom-theme 'doom-outrun-electric)

(setq display-line-numbers-type t)

(use-package! zetteldeft
  :config
  (setq deft-directory "~/Dropbox/zettel")
)

(map!
    :leader
    :desc "Launch Zetteldeft" :gn "n SPC" #'zetteldeft-deft-new-search
    :desc "New File" :gn "z n" #'zetteldeft-new-file
    :desc "New File and Link" :gn "z N" #'zetteldeft-deft-new-search-and-link
    )

(use-package! org-jira
  :after org
  :config
  (setq jiralib-url "https://fictiv.atlassian.net"))
