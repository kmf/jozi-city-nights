# Install

Clone the repo, then cherry-pick the configs you need.

```bash
git clone https://github.com/kmf/jozi-city-nights ~/.local/share/jozi-city-nights
cd ~/.local/share/jozi-city-nights
```

Commands below assume that clone is your working directory.

Three variants: `jozi-nights` (dark), `jozi-morning` (light), and `jozi-midnight` (deepest dark). Examples use `jozi-nights`. Swap the filename where that variant exists. `btop`, `fzf`, `k9s`, `lazygit`, COSMIC, and cosmic-term ship nights and morning only.

---

## Terminals

### Ghostty

```bash
mkdir -p ~/.config/ghostty/themes
cp terminals/ghostty/jozi-nights   ~/.config/ghostty/themes/
cp terminals/ghostty/jozi-morning  ~/.config/ghostty/themes/
cp terminals/ghostty/jozi-midnight ~/.config/ghostty/themes/
```

In `~/.config/ghostty/config`:

```
theme = jozi-nights
```

Or auto-switch with system preference:

```
theme = light:jozi-morning,dark:jozi-nights
```

### Alacritty

```bash
mkdir -p ~/.config/alacritty/themes
cp terminals/alacritty/jozi-nights.toml   ~/.config/alacritty/themes/
cp terminals/alacritty/jozi-morning.toml  ~/.config/alacritty/themes/
cp terminals/alacritty/jozi-midnight.toml ~/.config/alacritty/themes/
```

In `~/.config/alacritty/alacritty.toml`:

```toml
import = ["~/.config/alacritty/themes/jozi-nights.toml"]
```

### Kitty

```bash
mkdir -p ~/.config/kitty/themes
cp terminals/kitty/jozi-nights.conf   ~/.config/kitty/themes/
cp terminals/kitty/jozi-morning.conf  ~/.config/kitty/themes/
cp terminals/kitty/jozi-midnight.conf ~/.config/kitty/themes/
```

In `~/.config/kitty/kitty.conf`:

```
include ./themes/jozi-nights.conf
```

### WezTerm

```bash
mkdir -p ~/.config/wezterm/colors
cp terminals/wezterm/jozi-nights.lua   ~/.config/wezterm/colors/
cp terminals/wezterm/jozi-morning.lua  ~/.config/wezterm/colors/
cp terminals/wezterm/jozi-midnight.lua ~/.config/wezterm/colors/
```

In `~/.config/wezterm/wezterm.lua`:

```lua
config.colors = require 'colors/jozi-nights'
```

### iTerm2

Double-click `terminals/iterm2/jozi-nights.itermcolors` to import, or:

iTerm2 → Preferences → Profiles → Colors → Color Presets → Import → select the `.itermcolors` file.

Morning and midnight are `jozi-morning.itermcolors` and `jozi-midnight.itermcolors`.

### foot

```bash
mkdir -p ~/.config/foot
cp terminals/foot/jozi-nights.ini ~/.config/foot/jozi-nights.ini
```

In `~/.config/foot/foot.ini`:

```ini
include=~/.config/foot/jozi-nights.ini
```

### Windows Terminal

Open Settings → Open JSON file, then paste the contents of `terminals/windows-terminal/jozi-nights.json` into the `schemes` array. Set the scheme name in your profile:

```json
{
  "colorScheme": "jozi-nights"
}
```

Scheme names are `jozi-nights`, `jozi-morning`, and `jozi-midnight`.

### cosmic-term

Open cosmic-term → View → Color schemes… → Import, and select `desktop/cosmic/cosmic-term-jozi-nights.ron` or `desktop/cosmic/cosmic-term-jozi-morning.ron`. Then View → Color schemes → **jozi-nights** or **jozi-morning**.

---

## Editors

### VS Code

```bash
cp -r editors/vscode ~/.vscode/extensions/jozi-city-nights
```

Or symlink from the repo clone:

```bash
ln -s ~/.local/share/jozi-city-nights/editors/vscode ~/.vscode/extensions/jozi-city-nights
```

Restart VS Code → Settings → Color Theme → **Jozi City Nights**, **Jozi City Morning**, or **Jozi City Midnight**.

### Zed

```bash
mkdir -p ~/.config/zed/themes
cp editors/zed/jozi-city-nights.json ~/.config/zed/themes/
```

In `~/.config/zed/settings.json`:

```json
{
  "theme": {
    "mode": "dark",
    "dark": "Jozi Nights",
    "light": "Jozi Morning"
  }
}
```

The same file also includes **Jozi Midnight**.

### Fresh

```bash
mkdir -p ~/.config/fresh/themes
cp editors/fresh/jozi-nights.json   ~/.config/fresh/themes/
cp editors/fresh/jozi-morning.json  ~/.config/fresh/themes/
cp editors/fresh/jozi-midnight.json ~/.config/fresh/themes/
```

In `~/.config/fresh/config.json`:

```json
{
  "theme": "jozi-nights.json"
}
```

Or View → Select Theme… and pick **jozi-nights**, **jozi-morning**, or **jozi-midnight**.

---

## Apps

### Claude Code

Merge these keys into `~/.claude/settings.json` (the file in the repo is only the theme fragment):

```json
{
  "theme": "dark",
  "env": {
    "COLORTERM": "truecolor",
    "JOZI_VARIANT": "jozi-nights"
  }
}
```

Set `JOZI_VARIANT` to `jozi-morning` or `jozi-midnight` to match the rest of your stack. Use `"theme": "light"` with morning.

### Obsidian

```bash
VAULT=~/path/to/your/vault
mkdir -p "$VAULT/.obsidian/themes/jozi-city-nights"
cp apps/obsidian/theme.css     "$VAULT/.obsidian/themes/jozi-city-nights/theme.css"
cp apps/obsidian/manifest.json "$VAULT/.obsidian/themes/jozi-city-nights/manifest.json"
```

Settings → Appearance → Themes → select **Jozi City Nights**. Dark mode is `jozi-nights`. Light mode is `jozi-morning`.

For midnight, with the theme active in dark mode:

```bash
mkdir -p "$VAULT/.obsidian/snippets"
cp apps/obsidian/snippets/jozi-midnight.css "$VAULT/.obsidian/snippets/"
```

Settings → Appearance → CSS snippets → enable **jozi-midnight**.

---

## Desktop

### COSMIC Desktop

```bash
# Dark
mkdir -p ~/.config/cosmic/com.system76.CosmicTheme.Dark/v1
cp desktop/cosmic/jozi-nights.ron ~/.config/cosmic/com.system76.CosmicTheme.Dark/v1/Theme

# Light
mkdir -p ~/.config/cosmic/com.system76.CosmicTheme.Light/v1
cp desktop/cosmic/jozi-morning.ron ~/.config/cosmic/com.system76.CosmicTheme.Light/v1/Theme
```

Then import via Settings → Appearance.

The theme format targets cosmic-epoch 1.0. If fields differ, export a custom theme from cosmic-settings and merge the jozi values into that schema.

### Dank Material Shell (DMS)

Point DMS at the theme file via its [config file](https://danklinux.com/docs/dankmaterialshell/custom-themes#via-configuration-file). In `~/.config/DankMaterialShell/settings.json`:

```json
{
  "currentThemeName": "custom",
  "customThemeFile": "/home/you/.local/share/jozi-city-nights/desktop/dms/theme.json"
}
```

DMS reloads automatically on save. The theme provides three flavors (**Nights**, **Midnight**, **Morning**) and 8 accents (pink default, plus blue, purple, green, yellow, orange, cyan, teal), selectable via the DMS variant picker.

---

## Dev Tools

### btop

```bash
mkdir -p ~/.config/btop/themes
cp tools/btop/jozi-nights.theme  ~/.config/btop/themes/
cp tools/btop/jozi-morning.theme ~/.config/btop/themes/
```

In btop: press `Esc` → Options → Color theme → select **jozi-nights**.

### fzf

Source the theme in your shell rc:

```bash
# ~/.zshrc or ~/.bashrc
source ~/.local/share/jozi-city-nights/tools/fzf/jozi-nights.sh
```

Morning is `tools/fzf/jozi-morning.sh`.

### k9s

```bash
mkdir -p ~/.config/k9s/skins
cp tools/k9s/jozi-nights.yaml  ~/.config/k9s/skins/
cp tools/k9s/jozi-morning.yaml ~/.config/k9s/skins/
```

In `~/.config/k9s/config.yaml`:

```yaml
k9s:
  ui:
    skin: jozi-nights
```

### lazygit

Merge the contents of `tools/lazygit/jozi-nights.yml` into `~/.config/lazygit/config.yml` under the `gui.theme` key. Morning is `tools/lazygit/jozi-morning.yml`.

### tmux

```bash
# In ~/.tmux.conf
source-file ~/.local/share/jozi-city-nights/tools/tmux/jozi-nights.tmux
```

Then reload:

```bash
tmux source-file ~/.tmux.conf
```

Morning and midnight are `jozi-morning.tmux` and `jozi-midnight.tmux`.
