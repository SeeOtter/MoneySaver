# _____            _____ _   _                       _   
#/  ___|          |  _  | | | |                     | |  
#\ `--.  ___  ___ | | | | |_| |_ ___ _ __ _ __   ___| |_ 
# `--. \/ _ \/ _ \| | | | __| __/ _ \ '__| '_ \ / _ \ __|
#/\__/ /  __/  __/\ \_/ / |_| ||  __/ |_ | | | |  __/ |_ 
#\____/ \___|\___| \___/ \__|\__\___|_(_)|_| |_|\___|\__|
#=============================================================================
#Copyright (C) 2014  SeeOtter.net | info(at)seeotter(dot)net | 
#
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>
#
# AUTHOR: Seeotter
# Email: info@seeotter.net
# Date Created: Sept 14, 2014
#=============================================================================
#clears the previous terminal session (we like clean screens.)
clear
# Checks if log file exists, if not says log file will be made.
if [ -f log.txt ]; then
	echo "**log.txt found and loaded."
else
	echo "**log.txt will be created ......"
fi 
echo "$(date)                                   "
echo "=========================================="
echo "> What did you buy today?"
echo " "
read product 
echo "> How much money did you spend?"
echo " " 
read money
echo "Added.. $product with $ $money to log (log.txt)."
echo "==========================================" 
#logs output to log.txt
echo "Bought: $product     -/-/-     Paid: $ $money      [DB_ADD: $(date)]" >> log.txt
echo "          "
#Display the log file , change location if you want to place it somewhere else.
cat log.txt 
