#!/bin/bash

source /home/abhaythakor2020/Tools/Recon_tools/Content_discovery.sh
source /home/abhaythakor2020/Tools/Recon_tools/Link_finding.sh
source /home/abhaythakor2020/Tools/Recon_tools/subdomain_finding.sh
source /home/abhaythakor2020/Tools/Recon_tools/verable.sh
source /home/abhaythakor2020/Tools/Recon_tools/Js_finding.sh 
source /home/abhaythakor2020/Tools/Recon_tools/Recon_script.sh

# All verable 

# Define the target domain
root_domain=$1

out_of_scope=Out_of_scope/$2

#with (S) subdomain or withoit (NS) 
mode=$3 

path=/home/abhaythakor2020/Hackerone/$root_domain

Grep="grep -vF $out_of_scope"