## Remove YAY debug lib file
sudo rm -rf /usr/lib/debug/usr/bin/yay.debug 

## Remove YAY-Bin
sudo pacman -R yay-bin yay-bin-debug

## Remove dependencies folder
rm -rf dependencies/

## mkdir build structure
mkdir dependencies

## Go into dependencies
cd dependencies

## Remove yay folder
rm -r yay/* && rm -rf yay/

## Remove kpmcore folder
rm -rf kpmcore/* && rm -rf kpmcore/

## Remove ckbcomp folder
rm -rf console-setup/* rm -rf console-setup/

## Install YAY
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

## Insatll bdf2psf
yay -S bdf2psf

## Go back a directory
cd ..

## Install Calamares - This WILL FAIL. The dependencies ckbcomp and kpmcore>=24.01.75 will not install. They will install using the following portions of this script.
yay -S calamares

## Go the the root of the build structure
cd ~/UranusBuildTools/dependencies/

### This will install kpmcore
git clone https://invent.kde.org/system/kpmcore.git && cd kpmcore && mkdir build && cd build && cmake .. && make && sudo make install

## Go the the root of the build structure
cd ~/UranusBuildTools/dependencies/


### This will install ckbcomp
git clone https://salsa.debian.org/installer-team/console-setup.git && cd console-setup/ && make build-linux && sudo make install-linux

## Move back a directory
cd ..

## Install Gunzip, Download.extract unifont, and move to dependencies/console-setup/Fonts/bdf/ .
sudo pacman -S gzip && wget https://unifoundry.com/pub/unifont/unifont-15.1.05/font-builds/unifont-15.1.05.bdf.gz && gunzip unifont-15.1.05.bdf.gz && mv unifont-15.1.05.bdf ~/UranusBuildTools/dependencies/console-setup/Fonts/bdf/

## Go the the root of the build structure
cd ~/UranusBuildTools/dependencies/

## Pulling the latest git version of calamares
git clone https://aur.archlinux.org/calamares.git

## Changing to the Calamares Directory
cd calamares/

## Building the package
makepkg

## Go the the root of the build structure
cd ~/UranusBuildTools/

## Clean up Environment 
cd .. && rm -rf dependencies/* && rm -rf dependencies/
