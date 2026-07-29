;;; duskmoon-moonlight-theme.el --- Duskmoon Moonlight (dark) color theme  -*- lexical-binding: t; -*-

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

;; Duskmoon Moonlight (dark) color theme based on official @duskmoon-dev/design tokens.

;;; Code:

(require 'duskmoon-theme)

(deftheme duskmoon-moonlight
  "Duskmoon Moonlight (dark) color theme.")

(duskmoon-theme-build-theme 'duskmoon-moonlight duskmoon-palette-moonlight)

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'duskmoon-moonlight)

;;; duskmoon-moonlight-theme.el ends here
