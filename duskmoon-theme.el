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

;;; Code:

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
  '((primary                   . "#E19100")
    (primary-content           . "#FFFFFF")
    (primary-container         . "#F5EFD5")
    (on-primary-container      . "#262210")
    (secondary                 . "#E14754")
    (secondary-content         . "#FFFFFF")
    (secondary-container       . "#FAEAC6")
    (on-secondary-container    . "#2C2001")
    (tertiary                  . "#86C7ED")
    (tertiary-content          . "#0D1215")
    (tertiary-container        . "#D9F3FF")
    (on-tertiary-container     . "#151C1F")
    (accent                    . "#FFADFE")
    (accent-content            . "#793205")
    (neutral                   . "#000000")
    (neutral-content           . "#C6BBB5")
    (neutral-variant           . "#5D646F")
    (surface                   . "#FFFFFF")
    (surface-dim               . "#F5F1EA")
    (surface-bright            . "#FFFFFF")
    (surface-container-lowest  . "#FFFFFF")
    (surface-container-low     . "#FFFBF4")
    (surface-container         . "#F8F5EE")
    (surface-container-high    . "#F5F1EA")
    (surface-container-highest . "#EEEBE4")
    (surface-variant           . "#F1EADC")
    (on-surface                . "#212730")
    (on-surface-variant        . "#5D646F")
    (base-100                  . "#FDFFFF")
    (base-200                  . "#EBEFF4")
    (base-300                  . "#DADEE5")
    (base-400                  . "#5A7394")
    (base-500                  . "#425771")
    (base-600                  . "#2C3C4F")
    (base-700                  . "#182230")
    (base-800                  . "#0C121A")
    (base-900                  . "#040609")
    (base-content              . "#030303")
    (outline                   . "#AAAEB4")
    (outline-variant           . "#CACED4")
    (inverse-surface           . "#1C222B")
    (inverse-on-surface        . "#EBEFF5")
    (inverse-primary           . "#FFA460")
    (shadow                    . "#000000")
    (scrim                     . "#000000")
    (info                      . "#184D89")
    (info-content              . "#B0E8FF")
    (info-container            . "#DCF2FF")
    (on-info-container         . "#00405E")
    (success                   . "#62AD05")
    (success-content           . "#003500")
    (success-container         . "#D6F0DA")
    (on-success-container      . "#033816")
    (warning                   . "#FA6104")
    (warning-content           . "#9E0000")
    (warning-container         . "#FAE5C3")
    (on-warning-container      . "#5E3A00")
    (error                     . "#F1201F")
    (error-content             . "#FFD556")
    (error-container           . "#FFDEDB")
    (on-error-container        . "#5C1717"))
  "Official Sunshine (light) color tokens from @duskmoon-dev/design.")

(defalias 'duskmoon-palette 'duskmoon-palette-moonlight
  "Default palette alias pointing to `duskmoon-palette-moonlight`.")

(defun duskmoon-theme-build-theme (theme-name palette)
  "Apply face specifications for THEME-NAME using PALETTE."
  (let ((primary                   (cdr (assq 'primary palette)))
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
        (on-error-container        (cdr (assq 'on-error-container palette))))
    (ignore secondary-content tertiary-content accent-content neutral surface-variant
            base-100 base-200 base-300 base-400 base-500 base-700 base-900
            inverse-surface inverse-on-surface inverse-primary shadow scrim error)
    (custom-theme-set-faces
     theme-name

     ;; Core UI
     `(default ((t (:background ,surface :foreground ,on-surface))))
     `(cursor ((t (:background ,primary :foreground ,primary-content))))
     `(region ((t (:background ,primary-container :foreground ,on-primary-container))))
     `(mode-line ((t (:background ,surface-container-high :foreground ,on-surface :box (:line-width 1 :color ,outline-variant)))))
     `(mode-line-inactive ((t (:background ,surface-container-low :foreground ,on-surface-variant :box (:line-width 1 :color ,outline-variant)))))
     `(line-number ((t (:background ,surface-dim :foreground ,neutral-variant))))
     `(line-number-current-line ((t (:background ,surface-container :foreground ,secondary :weight bold))))
     `(fringe ((t (:background ,surface-dim :foreground ,outline))))
     `(vertical-border ((t (:foreground ,outline-variant))))
     `(minibuffer-prompt ((t (:foreground ,secondary :weight bold))))

     ;; Additional Core UI Elements & Diagnostics
     `(highlight ((t (:background ,surface-bright :foreground ,on-surface))))
     `(header-line ((t (:background ,surface-container :foreground ,on-surface :box (:line-width 1 :color ,outline-variant)))))
     `(shadow ((t (:foreground ,neutral-content))))
     `(link ((t (:foreground ,tertiary :underline t))))
     `(link-visited ((t (:foreground ,accent :underline t))))
     `(tooltip ((t (:background ,surface-container-highest :foreground ,on-surface :box (:line-width 1 :color ,outline)))))
     `(window-divider ((t (:foreground ,outline-variant))))
     `(window-divider-first-pixel ((t (:foreground ,outline-variant))))
     `(window-divider-last-pixel ((t (:foreground ,outline-variant))))
     `(show-paren-match ((t (:background ,tertiary-container :foreground ,on-tertiary-container :weight bold))))
     `(show-paren-mismatch ((t (:background ,error-container :foreground ,on-error-container :weight bold))))
     `(error ((t (:foreground ,error-content :weight bold))))
     `(warning ((t (:foreground ,warning :weight bold))))
     `(success ((t (:foreground ,success :weight bold))))
     `(compilation-info ((t (:background ,info-container :foreground ,info-content :weight bold))))
     `(compilation-warning ((t (:background ,warning-container :foreground ,warning-content :weight bold))))
     `(compilation-error ((t (:background ,error-container :foreground ,error-content :weight bold))))
     `(compilation-success ((t (:background ,success-container :foreground ,success-content :weight bold))))

     ;; Standard Syntax (Font Lock)
     `(font-lock-comment-face ((t (:foreground ,neutral-variant :slant italic))))
     `(font-lock-comment-delimiter-face ((t (:foreground ,neutral-variant :slant italic))))
     `(font-lock-doc-face ((t (:foreground ,base-600 :slant italic))))
     `(font-lock-keyword-face ((t (:foreground ,tertiary :weight bold))))
     `(font-lock-string-face ((t (:foreground ,success))))
     `(font-lock-function-name-face ((t (:foreground ,secondary))))
     `(font-lock-variable-name-face ((t (:foreground ,accent))))
     `(font-lock-type-face ((t (:foreground ,info))))
     `(font-lock-constant-face ((t (:foreground ,secondary))))
     `(font-lock-warning-face ((t (:foreground ,warning :weight bold))))
     `(font-lock-builtin-face ((t (:foreground ,tertiary))))
     `(font-lock-negation-char-face ((t (:foreground ,warning))))
     `(font-lock-preprocessor-face ((t (:foreground ,accent))))
     `(font-lock-regexp-grouping-construct ((t (:foreground ,secondary :weight bold))))
     `(font-lock-regexp-grouping-backslash ((t (:foreground ,tertiary :weight bold))))
     `(font-lock-number-face ((t (:foreground ,base-800))))

     ;; Org Mode
     `(org-level-1 ((t (:foreground ,secondary :weight bold :height 1.2))))
     `(org-level-2 ((t (:foreground ,tertiary :weight bold :height 1.15))))
     `(org-level-3 ((t (:foreground ,accent :weight bold :height 1.1))))
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
     `(org-document-title ((t (:foreground ,primary :weight bold :height 1.3))))
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
     `(magit-diff-hunk-heading ((t (:background ,surface-container-high :foreground ,tertiary :weight bold))))
     `(magit-diff-hunk-heading-highlight ((t (:background ,surface-container-highest :foreground ,tertiary :weight bold))))
     `(magit-section-heading ((t (:foreground ,secondary :weight bold))))
     `(magit-section-highlight ((t (:background ,surface-container))))
     `(magit-branch-local ((t (:foreground ,tertiary :weight bold))))
     `(magit-branch-remote ((t (:foreground ,accent :weight bold)))))))

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
