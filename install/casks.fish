function install_casks -d "Installs all the casks needed"
  echo "Now that your system is ready, let's install some UI apps"

  set installed_casks (brew cask list)

  set casks 'dropbox' '1password' 'alfred' \
            'google-chrome' 'firefox' 'slack' \
            'iterm2' 'google-drive' 'spectacle' \
            'evernote' 'flux' 'spotify' 'skitch' \
            'caffeine' 'docker' 'franz' 'poedit' \
            'recordit' 'sequel-pro' \


  for cask in $casks
    if contains $cask $installed_casks
      echo "$cask already installed... skipping"
    else
      echo "Installing: $cask"
      brew cask install $cask
    end
  end
end
