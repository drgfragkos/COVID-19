#!/bin/bash

# COVID19.sh -- Covid19 statistics in the command line for a custom selection of countries (Countries of Interest).
# The script is using https://corona-stats.online as source.
# @drgfragkos 2020 ################################################################

## Countries of Interest (Selection of Countries)
clear && curl -s https://corona-stats.online/?minimal=true | grep "Rank\|(DE)\|(IT)\|(ES)\|(GR)\|(US)\|(AE)\|(GB)\|(CH)\|(AT)\|(NL)\|(CY)\|(PT)\|(FR)\|(BE)\|(LU)\|(TR)\|(AU)\|(RO)\|(NZ)" 

## print a line of dashes (line seperator)
printf "%0.s-" {1..135}

## print the 'World' statistics (summary)
printf "\n" && curl -s https://corona-stats.online/?minimal=true | grep "World" | grep -v "Rank"

## print date of results
printf "\n" && date '+[COVID-19 Statistics, Date: %A, %d/%b %Y]' && printf "\n"

#custom date
#printf "\n" && printf "[COVID-19 Statistics, Date: Tuesday, 29/Apr 2020]\n" && printf "\n"

