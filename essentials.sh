echo shall i start?
echo press y to continue or press enter to stop
read name
if [ $name ];
then 
cd ~
cd Downloads
sudo apt install git 
git clone https://github.com/dylanaraps/pfetch.git
cd pfetch 
sudo mv pfetch /usr/bin/
cd ..

sudo apt install wget

wget https://github.com/josh-richardson/cadmus/releases/download/0.0.3/cadmus.deb
sudo dpkg --install cadmus.deb
echo installed cadmus

sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

echo brave browser installed

wget https://launcher.mojang.com/download/Minecraft.deb

sudo dpkg --install Minecraft.deb

echo installed minecraft

wget https://discord.com/api/download?platform=linux&format=deb

sudo dpkg --install discord-0.0.17.deb
else

exit

fi
