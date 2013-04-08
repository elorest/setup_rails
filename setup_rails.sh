ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)
brew doctor
brew update
brew install apple-gcc42
brew install rbenv ruby-build
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
rbenv install 2.0.0-p0
rbenv rehash
rbenv global 2.0.0-p0
rbenv shell 2.0.0-p0
gem install bundler
rbenv rehash
echo 'gem: --no-rdoc --no-ri' >> ~/.gemrc
brew install sqlite3
brew install imagemagick
brew install mysql
unset TMPDIR
mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist

