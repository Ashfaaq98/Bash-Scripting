#!/bin/bash

##Use this script as a template for future scripts


echo -e "Enter the name of the script you wish to create:\c"
read -r file

touch /home/Ashfaaq/scripts/$file.sh
wd=/home/Ashfaaq/scripts

echo '#!/bin/bash' > $wd/$file.sh
echo '#Purpose:' >> $wd/$file.sh
echo '#Version:' >> $wd/$file.sh
echo '#Created date:' `date` >> $wd/$file.sh
echo '#START' >> $wd/$file.sh
echo '#END' >> $wd/$file.sh

