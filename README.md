# emacs-duskmoon-theme

Official [Duskmoon](https://github.com/duskmoon-dev) color theme suite for Emacs.

`emacs-duskmoon-theme` provides two official themes derived directly from [@duskmoon-dev/design](https://github.com/duskmoon-dev/design) tokens:
- **`duskmoon-moonlight`** (Dark mode)
- **`duskmoon-sunshine`** (Light mode)

---

## Themes & Palette Alignment

All color values—including surface backgrounds, text foregrounds, syntax highlighting, and state feedback colors—are aligned with the official `@duskmoon-dev/design` system tokens.

| Theme Symbol | Mode | Primary | Surface | Text Foreground |
|---|---|---|---|---|
| `duskmoon-moonlight` | Dark | `#CFCFCF` | `#11161F` | `#EBEFF5` |
| `duskmoon-sunshine` | Light | `#E19100` | `#FFFFFF` | `#212730` |

---

## Usage & Features

### Basic Usage

Load your preferred theme using `load-theme`:

```elisp
;; Load Dark Theme (Moonlight)
(load-theme 'duskmoon-moonlight t)

;; Or Load Light Theme (Sunshine)
(load-theme 'duskmoon-sunshine t)
```

### Dynamic Theme Toggling

Toggle dynamically between `duskmoon-moonlight` and `duskmoon-sunshine` while instantly refreshing modeline faces:

```elisp
(duskmoon-toggle-theme)
```

### Color Token API for Extensions & Packages

Other packages, modelines, or custom UI extensions can query active or specific theme tokens programmatically:

```elisp
;; Query token for active theme (returns hex string, e.g., "#CFCFCF")
(duskmoon-get-color 'primary)
(duskmoon-color 'surface)

;; Query token for a specific theme variant
(duskmoon-get-color 'primary 'duskmoon-sunshine)

;; Access active palette alist directly
duskmoon-theme-active-palette

;; Evaluate code with palette tokens bound locally
(duskmoon-with-palette 'duskmoon-moonlight
  (message "Primary: %s, Surface: %s" primary surface))
```

---

## Complete `use-package` Configuration (`init.el`)

Here is a complete, minimal `use-package` setup demonstrating theme loading and dynamic toggling keybinding:

```elisp
(use-package emacs-duskmoon-theme
  :straight (emacs-duskmoon-theme :type git :host github :repo "duskmoon-dev/emacs-duskmoon-theme")
  :bind ("C-c t d" . duskmoon-toggle-theme)
  :config
  (load-theme 'duskmoon-moonlight t))
```

---

## Installation

### Method 1: `package-vc-install` (Emacs 29+)

```elisp
(package-vc-install '(emacs-duskmoon-theme :url "https://github.com/duskmoon-dev/emacs-duskmoon-theme"))
```

### Method 2: `straight.el`

```elisp
(use-package emacs-duskmoon-theme
  :straight (emacs-duskmoon-theme :type git :host github :repo "duskmoon-dev/emacs-duskmoon-theme")
  :config
  (load-theme 'duskmoon-moonlight t))
```

### Method 3: Local Clone

Clone the repository to your local directory:

```bash
git clone https://github.com/duskmoon-dev/emacs-duskmoon-theme.git ~/.emacs.d/themes/emacs-duskmoon-theme
```

Add the following to your Emacs initialization file (`init.el` or `.emacs`):

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-duskmoon-theme")
(load-theme 'duskmoon-moonlight t)
```

---

## License

This project is licensed under the [GNU General Public License v3.0](LICENSE).
