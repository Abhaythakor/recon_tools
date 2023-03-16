#!/bin/bash


source /home/abhaythakor2020/Tools/Recon_tools/Content_discovery.sh
source /home/abhaythakor2020/Tools/Recon_tools/Link_finding.sh
source /home/abhaythakor2020/Tools/Recon_tools/subdomain_finding.sh
source /home/abhaythakor2020/Tools/Recon_tools/verable.sh
source /home/abhaythakor2020/Tools/Recon_tools/Js_finding.sh 
source /home/abhaythakor2020/Tools/Recon_tools/Recon_script.sh

# # Define the Content_Discovery_commands to run
# Content_Discovery_commands=(
#   "gospider -S $path/Subdomain/Http_domain.txt > $path/Content_Discovery/gospider/Http_domain.txt "
#   "cat $path/Subdomain/Http_domain.txt | hakrawler > $path/Content_Discovery/hakrawler/Http_domain.txt "
#   "katana -silent -list $path/Subdomain/Http_domain.txt > $path/Content_Discovery/katana/Http_domain.txt "
# )

# # Function to display the animation
# spin()
# {
#   spinner="/|\\-/|\\-"
#   while :
#   do
#     for i in $(seq 0 7)
#     do
#       echo -n "${spinner:$i:1}"
#       echo -en "\010"
#       sleep 0.1
#     done
#   done
# }

# # Start the animation in the background
# spin &

# # Save the PID of the animation process
# SPIN_PID=$!

# # Run the Content_Discovery_commands in parallel
# parallel --jobs 3 < <(printf '%s\n' "${Content_Discovery_commands[@]}")

# # Stop the animation
# kill $SPIN_PID

# grep -Eo '(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]' $path/Content_Discovery/hakrawler/Http_domain.txt >  $path/Content_Discovery/hakrawler/cleaned_Http_domain.txt 
# grep -Eo '(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]' $path/Content_Discovery/gospider/Http_domain.txt > $path/Content_Discovery/gospider/cleaned_Http_domain.txt 


# cat $path/Content_Discovery/hakrawler/cleaned_Http_domain.txt $path/Content_Discovery/katana/Http_domain.txt $path/Content_Discovery/gospider/cleaned_Http_domain.txt |grep "\.$root_domain"| sort -u >  $path/Content_Discovery/urls.txt 
# rm $path/Content_Discovery/hakrawler/Http_domain.txt $path/Content_Discovery/gospider/Http_domain.txt 
# rm $path/Content_Discovery/hakrawler/cleaned_Http_domain.txt $path/Content_Discovery/katana/Http_domain.txt $path/Content_Discovery/gospider/cleaned_Http_domain.txt
echo "Content Discovery Completed"