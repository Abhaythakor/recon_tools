#!/bin/bash

root_domain=$1
path=/home/abhaythakor2020/Hackerone/$root_domain

mkdir $path $path/Subdomain

# Define the commands to run
commands=(
  "amass enum -passive -d $root_domain --config /home/abhaythakor2020/Tools/Config/config.ini > $path/Subdomain/amass.txt "
  "subfinder -d $root_domain --silent > $path/Subdomain/subfinder.txt "
  "assetfinder --subs-only $root_domain | grep -E '\\b$root_domain\$' > $path/Subdomain/assetfinder.txt "
)


# Run the commands in parallel
parallel --jobs 3 < <(printf '%s\n' "${commands[@]}")





cat $path/Subdomain/amass.txt $path/Subdomain/subfinder.txt $path/Subdomain/assetfinder.txt | sort -u -o $path/Subdomain/subdomain.txt
rm $path/Subdomain/amass.txt $path/Subdomain/subfinder.txt $path/Subdomain/assetfinder.txt
echo "Finished subdomain and asset enumeration"


# Check if the out_of_scope is provided
if [ -z "$out_of_scope" ]; then
  grep -vF $out_of_scope $path/Subdomain/subdomain.txt | tee $path/Subdomain/subdomains.txt
fi



#...............................................................................................

cat $path/Subdomain/subdomains.txt | httpx -silent | tee $path/Subdomain/Http_domain.txt

#...............................................................................................


