git clone --depth=1 https://github.com/sstephenson/rbenv.git $RBENV_ROOT
echo 'eval "$($RBENV_ROOT/bin/rbenv init -)"' >> /etc/profile.d/rbenv.sh
echo 'eval "$($RBENV_ROOT/bin/rbenv init -)"' >> $HOME/.bashrc
chmod +x /etc/profile.d/rbenv.sh

mkdir $RBENV_ROOT/plugins
git clone --depth=1 https://github.com/sstephenson/ruby-build.git $RBENV_ROOT/plugins/ruby-build

$RBENV_ROOT/bin/rbenv install 2.4.7
$RBENV_ROOT/bin/rbenv global 2.4.7
$RBENV_ROOT/shims/gem install bundler
$RBENV_ROOT/bin/rbenv rehash
