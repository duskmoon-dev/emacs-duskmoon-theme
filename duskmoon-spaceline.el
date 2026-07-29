;;; duskmoon-spaceline.el --- Spaceline integration for Duskmoon themes  -*- lexical-binding: t; -*-

;; Author: Duskmoon Developers
;; Maintainer: Duskmoon Developers
;; URL: https://github.com/duskmoon-dev/emacs-duskmoon-theme
;; Version: 0.1.0
;; Package-Requires: ((emacs "26.1"))
;; Keywords: faces, theme, mode-line

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

;; Custom Spaceline modeline integration for `duskmoon-moonlight` and `duskmoon-sunshine` themes.
;; Provides segment definitions, custom faces, and setup function `duskmoon-spaceline-setup`.

;;; Code:

(require 'spaceline nil t)

(declare-function spaceline-compile "spaceline")

(defgroup duskmoon-spaceline nil
  "Spaceline integration for Duskmoon themes."
  :group 'duskmoon-theme
  :prefix "duskmoon-spaceline-")

(defface duskmoon-spaceline-active1
  '((t (:background "#1C222B" :foreground "#EBEFF5")))
  "Face for active Spaceline primary segment."
  :group 'duskmoon-spaceline)

(defface duskmoon-spaceline-active2
  '((t (:background "#26292E" :foreground "#EFBF7F")))
  "Face for active Spaceline secondary segment."
  :group 'duskmoon-spaceline)

(defface duskmoon-spaceline-inactive1
  '((t (:background "#11161F" :foreground "#AAAEB4")))
  "Face for inactive Spaceline primary segment."
  :group 'duskmoon-spaceline)

(defface duskmoon-spaceline-inactive2
  '((t (:background "#0A1018" :foreground "#6E7278")))
  "Face for inactive Spaceline secondary segment."
  :group 'duskmoon-spaceline)

(defface duskmoon-spaceline-modified
  '((t (:background "#4B3711" :foreground "#FF9403" :weight bold)))
  "Face for modified buffer indicator in Spaceline."
  :group 'duskmoon-spaceline)

(defface duskmoon-spaceline-read-only
  '((t (:background "#4F1A18" :foreground "#FF6C00" :weight bold)))
  "Face for read-only buffer indicator in Spaceline."
  :group 'duskmoon-spaceline)

;;;###autoload
(defun duskmoon-spaceline-setup ()
  "Setup and enable the Duskmoon Spaceline modeline format."
  (interactive)
  (unless (featurep 'spaceline)
    (require 'spaceline nil t))
  (if (fboundp 'spaceline-compile)
      (progn
        (spaceline-compile
         'duskmoon
         '((persp-name
            workspace-number
            window-number)
           :fallback ((buffer-modified duskmoon-spaceline-modified)
                      (buffer-size)
                      (buffer-id))
           :face duskmoon-spaceline-active1
           (buffer-modified
            buffer-size
            buffer-id
            remote-host)
           :face duskmoon-spaceline-active2
           (major-mode
            process
            (flycheck-error flycheck-warning flycheck-info)))
         '((version-control :when active)
           :face duskmoon-spaceline-active2
           (selection-info)
           :face duskmoon-spaceline-active1
           (line-column
            global)))
        (setq-default mode-line-format '("%e" (:eval (spaceline-ml-duskmoon))))
        (force-mode-line-update t))
    (message "Spaceline package is not loaded or available.")))

(provide 'duskmoon-spaceline)

;;; duskmoon-spaceline.el ends here
