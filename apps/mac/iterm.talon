os: mac
app: iTerm2
-

tag(): user.splits
tag(): tabs
tag(): user.file_manager
tag(): user.git
tag(): user.tabs
tag(): terminal

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

action(user.file_manager_open_parent):
    insert("cd ..")
    key(enter)
action(app.tab_open):
  key(cmd-t)
action(app.tab_close):
  key(cmd-w)
action(app.tab_next):
  key(ctrl-tab)
action(app.tab_previous):
  key(ctrl-shift-tab)
action(app.window_open):
  key(cmd-n)
kill all:
  key(ctrl-c)
rerun search:
  key(ctrl-r)
run (last|again):
  key(up)
  key(enter)
action(edit.page_down):
  key(command-pagedown)
action(edit.page_up):
  key(command-pageup)
action(user.file_manager_go_back):
    insert("../\n")