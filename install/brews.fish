function install_brews -d "Installs all the formulae needed"
  echo "First let us install all the brews you'll need to get going"

  set installed_formulae (brew list)

  set formulae  'rbenv' 'caskroom/cask/brew-cask' 'git' 'tree' \
                'node' 'phantomjs' \
                'ruby-build' 'mysql' 'python3' \


  for formula in $formulae
    if contains $formula $installed_formulae
      echo "$formula already installed... skipping"
    else
      echo "Installing: $formula"
      brew install $formula
    end
  end
end
