function setup_fish
  _check_dot_config
  _check_fish_conf_dir
  _add_base16
  _link_fish
end

function _check_dot_config
  if not test -e ~/.config
    mkdir ~/.config
  else
    echo Config directory is already present
  end
end

function _check_fish_conf_dir
  if not test -e ~/.config/fish
    mkdir ~/.config/fish
  end
end

function _add_base16
  if not test -e ~/.config/base16-shell
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
  else
    echo It seems that you have base 16 already installed, nice!
  end
end

function _link_fish
  if test -e ~/.config/fish/config.fish
    echo You already have a fish configuration file
  else
    echo Linking the configuration file
    ln -s "$HOME/.mac-setup/fish/config/config.fish" "$HOME/.config/fish/config.fish"
  end
end
