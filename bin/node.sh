# Install Node [2/3]
printf "📦 Install Node...\n"
source $(brew --prefix nvm)/nvm.sh
nvm install --lts
nvm alias default 'lts/*'

# Install global packages [3/3]
printf "📦 Install packages...\n" 
npm i -g http-server
npm i -g npm-check
npm update -g