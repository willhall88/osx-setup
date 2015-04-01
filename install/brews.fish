function ferment -d "Installs all the formulae needed"
  echo "First let us install all the brews you'll need to get going"

  set installed_formulae (brew list)

  set formulae  'caskroom/cask/brew-cask' 'git' 'git-flow' 'tree' \
                'chruby' 'chruby-fish' 'io' 'node' 'phantomjs' \
                'ruby-build' 'mysql' 'postgresql' \
                

  for formula in $formulae
    if contains $formula $installed_formulae
      echo "$formula already installed... skipping"
    else
      echo "Installing: $formula"
      brew install $formula
    end
  end
end
