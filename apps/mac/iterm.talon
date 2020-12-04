os: mac
app: iTerm2
-

tag(): splits
tag(): tabs

# splits.py support
action(user.split_window_left):
  key(cmd-alt-left)
action(user.split_window_right):
  key(cmd-alt-right)
action(user.split_window_up):
  key(cmd-alt-up)
action(user.split_window_down):
  key(cmd-alt-down)
action(user.split_window_vertically):
  key(cmd-d)
action(user.split_window_horizontally):
  key(cmd-shift-d)
action(user.split_window): key(cmd-d)
action(user.split_clear): key(cmd-w)
action(user.split_clear_all):
  key(cmd-shift-w)
action(user.split_next): key(cmd-[)
action(user.split_last): key(cmd-])