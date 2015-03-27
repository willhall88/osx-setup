function install_gems -d "Installs rubies and gems"
  # Install preferred version of Ruby and set it as the global default
  rbenv install 2.2.1
  rbenv global 2.2.1

  # Update to the latest Rubygems version
  gem update --system

  set installed_gems (gem list)

  set gems 'bundler' 'pg' 'rails' 'foreman'

  for gem in $gems
    if contains $gem $installed_gems
      echo "$gem already installed... skipping"
    else
      echo "Installing: $gem"
      gem install $gem
    end
  end
end