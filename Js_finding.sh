#!/bin/bash


source /home/abhaythakor2020/Tools/Recon_tools/Content_discovery.sh
source /home/abhaythakor2020/Tools/Recon_tools/Link_finding.sh
source /home/abhaythakor2020/Tools/Recon_tools/subdomain_finding.sh
source /home/abhaythakor2020/Tools/Recon_tools/verable.sh
source /home/abhaythakor2020/Tools/Recon_tools/Js_finding.sh 
source /home/abhaythakor2020/Tools/Recon_tools/Recon_script.sh

# Jacascript Extract

echo "Jacascript Extract"

# grep '\.js' $path/only_web_urls.txt > $path/Js_urls.txt 
# katana -silent -jc -list $path/Js_urls.txt -d 5 > $path/Js_url2.txt 

# grep '\.js'  $path/Js_url2.txt > $path/Js_urls3.txt 
# katana -silent -jc -list $path/Js_urls3.txt -d 5 > $path/Js_url4.txt

# grep '\.js'  $path/Js_url4.txt > $path/Js_urls5.txt
# katana -silent -jc -list $path/Js_urls5.txt -d 5 > $path/Js_url6.txt 


# cat $path/Js_urls.txt $path/Js_url2.txt $path/Js_urls3.txt $path/Js_url4.txt $path/Js_urls5.txt $path/Js_url6.txt|httpx -fc 404 | sort -u > $path/Lisks_form_js.txt 
# rm $path/Js_urls.txt $path/Js_url2.txt $path/Js_urls3.txt $path/Js_url4.txt $path/Js_urls5.txt $path/Js_url6.txt

echo "Jacascript Extract Finished"