#!/bin/bash

source /home/abhaythakor2020/Tools/Recon_tools/Content_discovery.sh
source /home/abhaythakor2020/Tools/Recon_tools/Link_finding.sh
source /home/abhaythakor2020/Tools/Recon_tools/subdomain_finding.sh
source /home/abhaythakor2020/Tools/Recon_tools/verable.sh
source /home/abhaythakor2020/Tools/Recon_tools/Js_finding.sh 
source /home/abhaythakor2020/Tools/Recon_tools/Recon_script.sh

# install some tools
#parallel
cd /home/abhaythakor2020/Tools/parallel-20230122/
sudo ./configure && make 
sudo make install
cd

# Define spinner function
spinner() {
  local i sp n
  sp='/-\|'
  n=${#sp}
  printf ' '
  while sleep 0.1; do
    printf '\b%.1s' "${sp:i++%n:1}"
  done
}

mkdir $path $path/Subdomain

# Check if the target domain is provided
if [ -z "$root_domain" ]; then
  echo "Please provide the target domain as an argument"
  exit 1
fi


# Check if mode is S for subdomain enumeration
if [ "$mode" == "S" ]; then
  echo "Running subdomain enumeration..."
  /home/abhaythakor2020/Tools/Recon_tools/subdomain_finding.sh
  echo "Finished subdomain enumeration"
fi

# Create directories
mkdir -p $path/Content_Discovery/{hakrawler,gospider,katana} $path/Links

echo "Content_Discovery/{hakrawler,gospider,katana} and Links directories created"
spinner &

# Run content discovery
/home/abhaythakor2020/Tools/Recon_tools/Content_discovery.sh
kill $!
printf '\bContent discovery complete\n'

# Find links
spinner &
/home/abhaythakor2020/Tools/Recon_tools/Link_finding.sh
kill $!
printf '\bLink finding complete\n'

# Find JavaScript files
spinner &
/home/abhaythakor2020/Tools/Recon_tools/Js_finding.sh
kill $!
printf '\bJavaScript file discovery complete\n'


printf '\bRecon complete\n'