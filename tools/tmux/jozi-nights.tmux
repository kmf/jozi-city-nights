# jozi-nights — jozi city nights
# https://github.com/kmf/jozi-city-nights

# --- status bar ---
set -g status-style "bg=#1f2335,fg=#a9b1d6"

# left: session name with accent background
set -g status-left-length 40
set -g status-left "#[bg=#f935b1,fg=#1b1e2e,bold] #S #[bg=#1f2335,fg=#f935b1,nobold] "

# right: date + time + host
set -g status-right-length 80
set -g status-right "#[fg=#868eb7]%Y-%m-%d #[fg=#a9b1d6]%H:%M #[bg=#c064f4,fg=#1b1e2e,bold] #h "

# windows: inactive = muted, active = accent background
set -g window-status-format "#[fg=#868eb7] #I:#W "
set -g window-status-current-format "#[bg=#f935b1,fg=#1b1e2e,bold] #I:#W #[default]"
set -g window-status-separator ""

# panes: border = border color, active = accent
set -g pane-border-style "fg=#5d6898"
set -g pane-active-border-style "fg=#f935b1"

# messages and command prompt
set -g message-style "bg=#f935b1,fg=#1b1e2e"
set -g message-command-style "bg=#24283b,fg=#a9b1d6"

# copy mode
set -g mode-style "bg=#5d6898,fg=#c0caf5"

# clock
set -g clock-mode-colour "#f935b1"
