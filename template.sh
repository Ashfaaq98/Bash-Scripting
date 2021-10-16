#!/bin/bash

##Use this script as a template for future scripts


echo -e "Enter the name of the script you wish to create:\c"
read -r file


touch /home/Ashfaaq/scripts/$file.sh

echo '#!/bin/bash' > /home/Ashfaaq/scripts/$file.sh
echo '#Purpose:' >> /home/Ashfaaq/scripts/$file.sh
echo '#Version:' >> /home/Ashfaaq/scripts/$file.sh
echo '#Created date:' `date` >> /home/Ashfaaq/scripts/$file.sh
echo '#START' >> /home/Ashfaaq/scripts/$file.sh
echo '#END' >> /home/Ashfaaq/scripts/$file.sh

