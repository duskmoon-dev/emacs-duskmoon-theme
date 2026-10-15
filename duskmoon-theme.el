;;; duskmoon-theme.el --- Duskmoon color theme system  -*- lexical-binding: t; -*-

;; Author: Duskmoon Developers
;; Maintainer: Duskmoon Developers
;; URL: https://github.com/duskmoon-dev/emacs-duskmoon-theme
;; Version: 0.1.0
;; Package-Requires: ((emacs "26.1"))
;; Keywords: faces, theme

;; This file is NOT part of GNU Emacs.

;;; License:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Duskmoon design system color themes for GNU Emacs.
;; Provides `duskmoon-moonlight` (dark) and `duskmoon-sunshine` (light) themes,
;; derived directly from official @duskmoon-dev/design system tokens:
;; https://github.com/duskmoon-dev/design

(defgroup duskmoon-theme nil
  "Customizable options for Duskmoon color themes."
  :group 'faces
  :prefix "duskmoon-")

(defcustom duskmoon-mode-line-style 'default
  "Style of the mode-line background.
- `default': Uses `surface-container-high' background.
- `vivid': Uses `primary' color background.
- `tertiary': Uses `tertiary' color background."
  :type '(choice (const :tag "Default Surface Container" default)
                 (const :tag "Vivid Primary Color" vivid)
                 (const :tag "Tertiary Color" tertiary))
  :group 'duskmoon-theme)

(defcustom duskmoon-header-line-style 'default
  "Style of the header-line background.
- `default': Uses `surface-container' background.
- `accent': Uses `secondary' color background.
- `dim': Uses `surface-dim' background."
  :type '(choice (const :tag "Default Surface Container" default)
                 (const :tag "Secondary Accent Color" accent)
                 (const :tag "Dimmed Surface" dim))
  :group 'duskmoon-theme)

(deftheme duskmoon
  "Default Duskmoon color theme based on @duskmoon-dev/design tokens.")

(defconst duskmoon-palette-moonlight
  '((primary                   . "#CFCFCF")
    (primary-content           . "#160603")
    (primary-container         . "#262021")
    (on-primary-container      . "#D4CBCD")
    (secondary                 . "#EFBF7F")
    (secondary-content         . "#160409")
    (secondary-container       . "#322718")
    (on-secondary-container    . "#E4D5C2")
    (tertiary                  . "#7EA7DC")
    (tertiary-content          . "#06090E")
    (tertiary-container        . "#1F2A38")
    (on-tertiary-container     . "#D3D8DE")
    (accent                    . "#E38FD0")
    (accent-content            . "#0C0615")
    (neutral                   . "#1D1D1D")
    (neutral-content           . "#6A6A6A")
    (neutral-variant           . "#6E7278")
    (surface                   . "#11161F")
    (surface-dim               . "#0A1018")
    (surface-bright            . "#232933")
    (surface-container-lowest  . "#050911")
    (surface-container-low     . "#11161F")
    (surface-container         . "#151B24")
    (surface-container-high    . "#1C222B")
    (surface-container-highest . "#26292E")
    (surface-variant           . "#282E38")
    (on-surface                . "#EBEFF5")
    (on-surface-variant        . "#AAAEB4")
    (base-100                  . "#121C22")
    (base-200                  . "#0E171E")
    (base-300                  . "#091319")
    (base-400                  . "#1B262C")
    (base-500                  . "#2A343C")
    (base-600                  . "#3F4950")
    (base-700                  . "#69737A")
    (base-800                  . "#96A0A7")
    (base-900                  . "#C5CFD7")
    (base-content              . "#9FB9D0")
    (outline                   . "#4F5358")
    (outline-variant           . "#373B40")
    (inverse-surface           . "#EBEFF5")
    (inverse-on-surface        . "#1C222B")
    (inverse-primary           . "#2171CC")
    (shadow                    . "#000000")
    (scrim                     . "#000000")
    (info                      . "#8ACEFF")
    (info-content              . "#071213")
    (info-container            . "#0B374D")
    (on-info-container         . "#B2DFFA")
    (success                   . "#B5CEA5")
    (success-content           . "#0B120B")
    (success-container         . "#1A3520")
    (on-success-container      . "#B3D9B9")
    (warning                   . "#FF9403")
    (warning-content           . "#140F08")
    (warning-container         . "#4B3711")
    (on-warning-container      . "#F3DAB2")
    (error                     . "#AA0101")
    (error-content             . "#FF6C00")
    (error-container           . "#4F1A18")
    (on-error-container        . "#FDC9C4"))
  "Official Moonlight (dark) color tokens from @duskmoon-dev/design.")

(defconst duskmoon-palette-sunshine
  '((primary                   . "#F2BD4B")
    (primary-content           . "#35270D")
    (primary-container         . "#FFF0C2")
    (on-primary-container      . "#574010")
    (secondary                 . "#B5A6D9")
    (secondary-content         . "#322747")
    (secondary-container       . "#F0EBF8")
    (on-secondary-container    . "#493764")
    (tertiary                  . "#86BED1")
    (tertiary-content          . "#18343F")
    (tertiary-container        . "#E3F2F6")
    (on-tertiary-container     . "#234753")
    (accent                    . "#F7DE87")
    (accent-content            . "#493A13")
    (neutral                   . "#3F3930")
    (neutral-content           . "#FFF9ED")
    (neutral-variant           . "#685D4F")
    (surface                   . "#FFFCF5")
    (surface-dim               . "#F0E7D5")
    (surface-bright            . "#FFFFFF")
    (surface-container-lowest  . "#FFFFFF")
    (surface-container-low     . "#FBF6EA")
    (surface-container         . "#F6EFDF")
    (surface-container-high    . "#F0E7D5")
    (surface-container-highest . "#E8DDC7")
    (surface-variant           . "#E8DDC7")
    (on-surface                . "#30291F")
    (on-surface-variant        . "#685D4F")
    (base-100                  . "#FFFCF5")
    (base-200                  . "#FBF6EA")
    (base-300                  . "#F0E7D5")
    (base-400                  . "#7E6F5B")
    (base-500                  . "#5F5343")
    (base-600                  . "#42392C")
    (base-700                  . "#272017")
    (base-800                  . "#15110C")
    (base-900                  . "#070503")
    (base-content              . "#30291F")
    (outline                   . "#887760")
    (outline-variant           . "#DBCFB9")
    (inverse-surface           . "#30291F")
    (inverse-on-surface        . "#FFF9ED")
    (inverse-primary           . "#F7DE87")
    (shadow                    . "#000000")
    (scrim                     . "#000000")
    (info                      . "#276D92")
    (info-content              . "#FFFFFF")
    (info-container            . "#E5F1F7")
    (on-info-container         . "#204C62")
    (success                   . "#327A4F")
    (success-content           . "#FFFFFF")
    (success-container         . "#E7F2E5")
    (on-success-container      . "#295039")
    (warning                   . "#AD570C")
    (warning-content           . "#FFFFFF")
    (warning-container         . "#FCE8CE")
    (on-warning-container      . "#703909")
    (error                     . "#B8423A")
    (error-content             . "#FFFFFF")
    (error-container           . "#FCE5DF")
    (on-error-container        . "#702B25"))
  "Official Sunshine (light) color tokens from @duskmoon-dev/design.")

(defalias 'duskmoon-palette 'duskmoon-palette-moonlight
  "Default palette alias pointing to `duskmoon-palette-moonlight`.")

(defvar duskmoon-theme-active-palette duskmoon-palette-moonlight
  "Alist of the currently active Duskmoon theme color tokens.")

(defvar duskmoon-theme-active-theme 'duskmoon-moonlight
  "Symbol of the currently active Duskmoon theme.")

;;;###autoload
(defun duskmoon-get-color (token &optional theme)
  "Get the hex color value for TOKEN in THEME.
TOKEN is a symbol matching a design token (e.g. `primary', `surface').
If THEME is omitted or nil, defaults to the active theme palette."
  (let ((palette (cond
                  ((eq theme 'duskmoon-sunshine) duskmoon-palette-sunshine)
                  ((eq theme 'duskmoon-moonlight) duskmoon-palette-moonlight)
                  (t duskmoon-theme-active-palette))))
    (cdr (assq token palette))))

;;;###autoload
(defalias 'duskmoon-color #'duskmoon-get-color
  "Alias for `duskmoon-get-color'.")

(defmacro duskmoon-with-palette (theme &rest body)
  "Evaluate BODY with local token variables bound to hex values for THEME."
  (declare (indent 1))
  `(let* ((p (cond
              ((eq ,theme 'duskmoon-sunshine) duskmoon-palette-sunshine)
              ((eq ,theme 'duskmoon-moonlight) duskmoon-palette-moonlight)
              (t duskmoon-theme-active-palette)))
          (primary                   (cdr (assq 'primary p)))
          (primary-content           (cdr (assq 'primary-content p)))
          (secondary                 (cdr (assq 'secondary p)))
          (tertiary                  (cdr (assq 'tertiary p)))
          (accent                    (cdr (assq 'accent p)))
          (surface                   (cdr (assq 'surface p)))
          (on-surface                (cdr (assq 'on-surface p)))
          (outline                   (cdr (assq 'outline p)))
          (info                      (cdr (assq 'info p)))
          (success                   (cdr (assq 'success p)))
          (warning                   (cdr (assq 'warning p)))
          (error                     (cdr (assq 'error p))))
     (ignore primary primary-content secondary tertiary accent surface
             on-surface outline info success warning error)
     ,@body))

(defun duskmoon-theme-build-theme (theme-name palette)
  "Apply face specifications for THEME-NAME using PALETTE."
  (setq duskmoon-theme-active-palette palette
        duskmoon-theme-active-theme theme-name)
  (let* ((primary                   (cdr (assq 'primary palette)))
        (primary-content           (cdr (assq 'primary-content palette)))
        (primary-container         (cdr (assq 'primary-container palette)))
        (on-primary-container      (cdr (assq 'on-primary-container palette)))
        (secondary                 (cdr (assq 'secondary palette)))
        (secondary-content         (cdr (assq 'secondary-content palette)))
        (secondary-container       (cdr (assq 'secondary-container palette)))
        (on-secondary-container    (cdr (assq 'on-secondary-container palette)))
        (tertiary                  (cdr (assq 'tertiary palette)))
        (tertiary-content          (cdr (assq 'tertiary-content palette)))
        (tertiary-container        (cdr (assq 'tertiary-container palette)))
        (on-tertiary-container     (cdr (assq 'on-tertiary-container palette)))
        (accent                    (cdr (assq 'accent palette)))
        (accent-content            (cdr (assq 'accent-content palette)))
        (neutral                   (cdr (assq 'neutral palette)))
        (neutral-content           (cdr (assq 'neutral-content palette)))
        (neutral-variant           (cdr (assq 'neutral-variant palette)))
        (surface                   (cdr (assq 'surface palette)))
        (surface-dim               (cdr (assq 'surface-dim palette)))
        (surface-bright            (cdr (assq 'surface-bright palette)))
        (surface-container-lowest  (cdr (assq 'surface-container-lowest palette)))
        (surface-container-low     (cdr (assq 'surface-container-low palette)))
        (surface-container         (cdr (assq 'surface-container palette)))
        (surface-container-high    (cdr (assq 'surface-container-high palette)))
        (surface-container-highest (cdr (assq 'surface-container-highest palette)))
        (surface-variant           (cdr (assq 'surface-variant palette)))
        (on-surface                (cdr (assq 'on-surface palette)))
        (on-surface-variant        (cdr (assq 'on-surface-variant palette)))
        (base-100                  (cdr (assq 'base-100 palette)))
        (base-200                  (cdr (assq 'base-200 palette)))
        (base-300                  (cdr (assq 'base-300 palette)))
        (base-400                  (cdr (assq 'base-400 palette)))
        (base-500                  (cdr (assq 'base-500 palette)))
        (base-600                  (cdr (assq 'base-600 palette)))
        (base-700                  (cdr (assq 'base-700 palette)))
        (base-800                  (cdr (assq 'base-800 palette)))
        (base-900                  (cdr (assq 'base-900 palette)))
        (base-content              (cdr (assq 'base-content palette)))
        (outline                   (cdr (assq 'outline palette)))
        (outline-variant           (cdr (assq 'outline-variant palette)))
        (inverse-surface           (cdr (assq 'inverse-surface palette)))
        (inverse-on-surface        (cdr (assq 'inverse-on-surface palette)))
        (inverse-primary           (cdr (assq 'inverse-primary palette)))
        (shadow                    (cdr (assq 'shadow palette)))
        (scrim                     (cdr (assq 'scrim palette)))
        (info                      (cdr (assq 'info palette)))
        (info-content              (cdr (assq 'info-content palette)))
        (info-container            (cdr (assq 'info-container palette)))
        (on-info-container         (cdr (assq 'on-info-container palette)))
        (success                   (cdr (assq 'success palette)))
        (success-content           (cdr (assq 'success-content palette)))
        (success-container         (cdr (assq 'success-container palette)))
        (on-success-container      (cdr (assq 'on-success-container palette)))
        (warning                   (cdr (assq 'warning palette)))
        (warning-content           (cdr (assq 'warning-content palette)))
        (warning-container         (cdr (assq 'warning-container palette)))
        (on-warning-container      (cdr (assq 'on-warning-container palette)))
        (error                     (cdr (assq 'error palette)))
        (error-content             (cdr (assq 'error-content palette)))
        (error-container           (cdr (assq 'error-container palette)))
        (on-error-container        (cdr (assq 'on-error-container palette)))
        (sunshine-p (eq theme-name 'duskmoon-sunshine))
        (primary-foreground (if sunshine-p on-primary-container primary))
        (secondary-foreground (if sunshine-p on-secondary-container secondary))
        (tertiary-foreground (if sunshine-p on-tertiary-container tertiary))
        (accent-foreground (if sunshine-p accent-content accent))
        (error-foreground (if sunshine-p error error-content))
        (mode-line-bg (pcase duskmoon-mode-line-style
                        ('vivid primary)
                        ('tertiary tertiary)
                        (_ surface-container-high)))
        (mode-line-fg (pcase duskmoon-mode-line-style
                        ('vivid primary-content)
                        ('tertiary tertiary-content)
                        (_ on-surface)))
        (header-line-bg (pcase duskmoon-header-line-style
                          ('accent secondary)
                          ('dim surface-dim)
                          (_ surface-container)))
        (header-line-fg (pcase duskmoon-header-line-style
                          ('accent secondary-content)
                          (_ on-surface))))
    (ignore neutral surface-variant info-content success-content
            base-100 base-200 base-300 base-400 base-500 base-700 base-900
            inverse-surface inverse-on-surface inverse-primary shadow scrim)
    (custom-theme-set-faces
     theme-name

     ;; Core UI
     `(default ((t (:background ,surface :foreground ,on-surface))))
     `(cursor ((t (:background ,primary :foreground ,primary-content))))
     `(region ((t (:background ,primary-container :foreground ,on-primary-container))))
     `(mode-line ((t (:background ,mode-line-bg :foreground ,mode-line-fg :box (:line-width 1 :color ,outline-variant)))))
     `(mode-line-inactive ((t (:background ,surface-container-low :foreground ,on-surface-variant :box (:line-width 1 :color ,outline-variant)))))
     `(line-number ((t (:background ,surface-dim :foreground ,neutral-variant))))
     `(line-number-current-line ((t (:background ,surface-container :foreground ,secondary-foreground :weight bold))))
     `(fringe ((t (:background ,surface-dim :foreground ,outline))))
     `(vertical-border ((t (:foreground ,outline-variant))))
     `(minibuffer-prompt ((t (:foreground ,secondary-foreground :weight bold))))

     ;; Additional Core UI Elements & Diagnostics
     `(highlight ((t (:background ,surface-bright :foreground ,on-surface))))
     `(header-line ((t (:background ,header-line-bg :foreground ,header-line-fg :box (:line-width 1 :color ,outline-variant)))))
     `(shadow ((t (:foreground ,neutral-content))))
     `(link ((t (:foreground ,tertiary-foreground :underline t))))
     `(link-visited ((t (:foreground ,accent-foreground :underline t))))
     `(tooltip ((t (:background ,surface-container-highest :foreground ,on-surface :box (:line-width 1 :color ,outline)))))
     `(window-divider ((t (:foreground ,outline-variant))))
     `(window-divider-first-pixel ((t (:foreground ,outline-variant))))
     `(window-divider-last-pixel ((t (:foreground ,outline-variant))))
     `(show-paren-match ((t (:background ,tertiary-container :foreground ,on-tertiary-container :weight bold))))
     `(show-paren-mismatch ((t (:background ,error-container :foreground ,on-error-container :weight bold))))
     `(error ((t (:foreground ,error-foreground :weight bold))))
     `(warning ((t (:foreground ,warning :weight bold))))
     `(success ((t (:foreground ,success :weight bold))))
     `(compilation-info ((t (:background ,info-container :foreground ,on-info-container :weight bold))))
     `(compilation-warning ((t (:background ,warning-container :foreground ,on-warning-container :weight bold))))
     `(compilation-error ((t (:background ,error-container :foreground ,on-error-container :weight bold))))
     `(compilation-success ((t (:background ,success-container :foreground ,on-success-container :weight bold))))

     ;; Standard Syntax (Font Lock)
     `(font-lock-comment-face ((t (:foreground ,neutral-variant :slant italic))))
     `(font-lock-comment-delimiter-face ((t (:foreground ,neutral-variant :slant italic))))
     `(font-lock-doc-face ((t (:foreground ,base-600 :slant italic))))
     `(font-lock-keyword-face ((t (:foreground ,tertiary-foreground :weight bold))))
     `(font-lock-string-face ((t (:foreground ,success))))
     `(font-lock-function-name-face ((t (:foreground ,secondary-foreground))))
     `(font-lock-variable-name-face ((t (:foreground ,accent-foreground))))
     `(font-lock-type-face ((t (:foreground ,info))))
     `(font-lock-constant-face ((t (:foreground ,secondary-foreground))))
     `(font-lock-warning-face ((t (:foreground ,warning :weight bold))))
     `(font-lock-builtin-face ((t (:foreground ,tertiary-foreground))))
     `(font-lock-negation-char-face ((t (:foreground ,warning))))
     `(font-lock-preprocessor-face ((t (:foreground ,accent-foreground))))
     `(font-lock-regexp-grouping-construct ((t (:foreground ,secondary-foreground :weight bold))))
     `(font-lock-regexp-grouping-backslash ((t (:foreground ,tertiary-foreground :weight bold))))
     `(font-lock-number-face ((t (:foreground ,base-800))))

     ;; Org Mode
     `(org-level-1 ((t (:foreground ,secondary-foreground :weight bold :height 1.2))))
     `(org-level-2 ((t (:foreground ,tertiary-foreground :weight bold :height 1.15))))
     `(org-level-3 ((t (:foreground ,accent-foreground :weight bold :height 1.1))))
     `(org-level-4 ((t (:foreground ,info :weight bold :height 1.05))))
     `(org-level-5 ((t (:foreground ,success :weight bold))))
     `(org-level-6 ((t (:foreground ,on-secondary-container :weight bold))))
     `(org-level-7 ((t (:foreground ,on-tertiary-container :weight bold))))
     `(org-level-8 ((t (:foreground ,on-info-container :weight bold))))
     `(org-table ((t (:background ,surface-container-lowest :foreground ,base-content))))
     `(org-code ((t (:background ,secondary-container :foreground ,on-secondary-container))))
     `(org-block ((t (:background ,surface-container-low :foreground ,on-surface))))
     `(org-block-begin-line ((t (:background ,surface-container :foreground ,neutral-variant :slant italic))))
     `(org-block-end-line ((t (:background ,surface-container :foreground ,neutral-variant :slant italic))))
     `(org-document-title ((t (:foreground ,primary-foreground :weight bold :height 1.3))))
     `(org-document-info ((t (:foreground ,base-content))))
     `(org-done ((t (:background ,success-container :foreground ,on-success-container :weight bold))))
     `(org-todo ((t (:background ,warning-container :foreground ,on-warning-container :weight bold))))
     `(org-headline-done ((t (:foreground ,neutral-variant :strike-through t))))

     ;; Search & Completion
     `(isearch ((t (:background ,warning :foreground ,warning-content :weight bold))))
     `(isearch-fail ((t (:background ,error-container :foreground ,on-error-container :weight bold))))
     `(lazy-highlight ((t (:background ,warning-container :foreground ,on-warning-container))))
     `(vertico-current ((t (:background ,surface-container-highest :foreground ,on-surface :weight bold))))

     ;; Git / Magit
     `(magit-diff-added ((t (:background ,success-container :foreground ,on-success-container))))
     `(magit-diff-added-highlight ((t (:background ,success-container :foreground ,on-success-container :weight bold))))
     `(magit-diff-removed ((t (:background ,error-container :foreground ,on-error-container))))
     `(magit-diff-removed-highlight ((t (:background ,error-container :foreground ,on-error-container :weight bold))))
     `(magit-diff-hunk-heading ((t (:background ,surface-container-high :foreground ,tertiary-foreground :weight bold))))
     `(magit-diff-hunk-heading-highlight ((t (:background ,surface-container-highest :foreground ,tertiary-foreground :weight bold))))
     `(magit-section-heading ((t (:foreground ,secondary-foreground :weight bold))))
     `(magit-section-highlight ((t (:background ,surface-container))))
     `(magit-branch-local ((t (:foreground ,tertiary-foreground :weight bold))))
     `(magit-branch-remote ((t (:foreground ,accent-foreground :weight bold)))))))

(duskmoon-theme-build-theme 'duskmoon duskmoon-palette-moonlight)

;;;###autoload
(defun duskmoon-toggle-theme ()
  "Toggle between `duskmoon-moonlight` and `duskmoon-sunshine` themes."
  (interactive)
  (if (custom-theme-enabled-p 'duskmoon-moonlight)
      (progn
        (disable-theme 'duskmoon-moonlight)
        (load-theme 'duskmoon-sunshine t))
    (progn
      (disable-theme 'duskmoon-sunshine)
      (load-theme 'duskmoon-moonlight t)))
  (force-mode-line-update t))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide 'duskmoon-theme)
(provide-theme 'duskmoon)

;;; duskmoon-theme.el ends here
