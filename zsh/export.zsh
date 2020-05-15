# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

# node@12 installed from Brewfile
export PATH="/usr/local/opt/node@12/bin:$PATH";
export LDFLAGS="-L/usr/local/opt/node@12/lib";
export CPPFLAGS="-I/usr/local/opt/node@12/include";