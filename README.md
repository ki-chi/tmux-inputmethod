# Tmux inputmethod

This plugin can show the input method or keyboard kayout on tmux status line.  

This plugin works only on macOS.  

## Demo
![Demo](https://cloud.githubusercontent.com/assets/5780297/24564183/ff233cd4-168b-11e7-9c96-f6bfa3c1f9cc.gif)

## Installation with TPM

You can easily install this plugin with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm). Put following code in `.tmux.conf`.

```
# Install The Plugin
set -g @plugin 'ki-chi/tmux-inputmethod'
```

Then, add `#{iptmthd}` strings in your `status-right` or `status-left` option in `.tmux.conf`.

```
# Example
set-option -g status-right '#{iptmthd}'
```

Push `prefix + I(shift+i)`, and the installation will finish.
