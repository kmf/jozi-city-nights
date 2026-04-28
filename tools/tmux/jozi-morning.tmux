# jozi-morning — jozi city nights
# https://github.com/kmf/jozi-city-nights

# --- status bar ---
set -g status-style "bg=#c8c9d1,fg=#343b58"

# left: session name with accent background
set -g status-left-length 40
set -g status-left "#[bg=#d6197a,fg=#d5d6db,bold] #S #[bg=#c8c9d1,fg=#d6197a,nobold] "

# right: date + time + host
set -g status-right-length 80
set -g status-right "#[fg=#6172af]%Y-%m-%d #[fg=#343b58]%H:%M #[bg=#7928a8,fg=#d5d6db,bold] #h "

# windows: inactive = muted, active = accent background
set -g window-status-format "#[fg=#6172af] #I:#W "
set -g window-status-current-format "#[bg=#d6197a,fg=#d5d6db,bold] #I:#W #[default]"
set -g window-status-separator ""

# panes: border = border color, active = accent
set -g pane-border-style "fg=#b0b3be"
set -g pane-active-border-style "fg=#d6197a"

# messages and command prompt
set -g message-style "bg=#d6197a,fg=#d5d6db"
set -g message-command-style "bg=#bfc1cc,fg=#343b58"

# copy mode
set -g mode-style "bg=#b0b3be,fg=#1f2335"

# clock
set -g clock-mode-colour "#d6197a"
