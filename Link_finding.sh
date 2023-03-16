#!/bin/bash


source /home/abhaythakor2020/Tools/Recon_tools/Content_discovery.sh
source /home/abhaythakor2020/Tools/Recon_tools/Link_finding.sh
source /home/abhaythakor2020/Tools/Recon_tools/subdomain_finding.sh
source /home/abhaythakor2020/Tools/Recon_tools/verable.sh
source /home/abhaythakor2020/Tools/Recon_tools/Js_finding.sh 
source /home/abhaythakor2020/Tools/Recon_tools/Recon_script.sh


# # Define the commands_link to run
# commands_links=(
#   "cat $path/Subdomain/Http_domain.txt |   parallel -j 4 waybackurls {}  > $path/Links/waybackurls.txt"
#   "cat $path/Subdomain/Http_domain.txt |   parallel -j 4 gau {} --threads 10 > $path/Links/gau.txt"
# )


# # Run the commands in parallel
# parallel --jobs 2 < <(printf '%s\n' "${commands_links[@]}")

# cat $path/Links/waybackurls.txt $path/Links/gau.txt | $Grep |sort -u | httpx > $path/Links/All_urls.txt 
# rm $path/Links/waybackurls.txt $path/Links/gau.txt

# #
# cat $path/Content_Discovery/urls.txt $path/Links/All_urls.txt|$Grep | sort -u > $path/All_urls.txt 
# rm $path/Content_Discovery/urls.txt $path/Links/All_urls.txt

# grep -Eo '(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]' $path/All_urls.txt > $path/cleaned_All_urls.txt 
# rm $path/All_urls.txt
# grep "\.$root_domain" $path/cleaned_All_urls.txt > $path/only_web_urls.txt 
# rm $path/cleaned_All_urls.txt


# # Clear the line and print a message
printf "\r%s\n" "Process Completed!"