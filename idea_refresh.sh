#!/usr/bin/env bash

#1) .IntelliJIdea{vesrsion}/config/options/other.xml — delete all lines of type - <property name="evlsprtXXX" value="XXX" />
#2) .IntelliJIdea{vesrsion}/config - delete the "eval" folder
#3) .java/.userPrefs/jetbrains/idea — delete folders called "evlsprtXXX" from this directory and its subdirectories

CONFIG_FOLDER_PATH=~/.IntelliJIdea*/config
IDEA_FOLDER_PATH=~/.java/.userPrefs/jetbrains/idea

# Step 1
cat $CONFIG_FOLDER_PATH/options/other.xml | grep -v evlsprt > temp_other.xml \
	&& cat temp_other.xml > $CONFIG_FOLDER_PATH/options/other.xml \
	&& rm -f temp_other.xml

# Step 2
rm -rf $CONFIG_FOLDER_PATH/eval

# Step 3
for SUBFOLDER in $(ls -l $IDEA_FOLDER_PATH | grep ^d | awk '{print $9}') 
	do 
		rm -rf $IDEA_FOLDER_PATH/$SUBFOLDER/evlsprt*
	done
  
