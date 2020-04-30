#!/bin/bash

# COVID19-EU.sh -- Covid19 statistics in the command line for the 27 EU member countries.
# The script is using https://corona-stats.online as source.
# @drgfragkos 2020 ################################################################

## The 27 EU Countries ## https://europa.eu/european-union/about-eu/countries_en
clear && curl -s https://corona-stats.online/?minimal=true | grep "Rank\|(AT)\|(BE)\|(BG)\|(HR)\|(CY)\|(CZ)\|(DK)\|(EE)\|(FI)\|(FR)\|(DE)\|(GR)\|(HU)\|(IE)\|(IT)\|(LV)\|(LT)\|(LU)\|(MT)\|(NL)\|(PL)\|(PT)\|(RO)\|(SK)\|(SI)\|(ES)\|(SE)"

## print a line of dashes (line seperator)
printf "%0.s-" {1..135}

## print the 'World' statistics (summary)
printf "\n" && curl -s https://corona-stats.online/?minimal=true | grep "World" | grep -v "Rank"

## print date of results
printf "\n" && date '+[The 27 EU member countries : COVID-19 Statistics, Date: %A, %d/%b %Y]' && printf "\n"

#custom date
#printf "\n" && printf "[The 27 EU member countries : COVID-19 Statistics, Date: Tuesday, 29/Apr 2020]\n" && printf "\n"

