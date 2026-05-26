# jozi-midnight — jozi city nights
# https://github.com/kmf/jozi-city-nights

# --- status bar ---
set -g status-style "bg=#16161e,fg=#a9b1d6"

# left: session name with accent background
set -g status-left-length 40
set -g status-left "#[bg=#f92aad,fg=#101014,bold] #S #[bg=#16161e,fg=#f92aad,nobold] "

# right: date + time + host
set -g status-right-length 80
set -g status-right "#[fg=#8089b3]%Y-%m-%d #[fg=#a9b1d6]%H:%M #[bg=#b141f1,fg=#101014,bold] #h "

# windows: inactive = muted, active = accent background
set -g window-status-format "#[fg=#8089b3] #I:#W "
set -g window-status-current-format "#[bg=#f92aad,fg=#101014,bold] #I:#W #[default]"
set -g window-status-separator ""

# panes: border = border color, active = accent
set -g pane-border-style "fg=#232433"
set -g pane-active-border-style "fg=#f92aad"

# messages and command prompt
set -g message-style "bg=#f92aad,fg=#101014"
set -g message-command-style "bg=#1a1b26,fg=#a9b1d6"

# copy mode
set -g mode-style "bg=#232433,fg=#c0caf5"

# clock
set -g clock-mode-colour "#f92aad"
