#!/bin/bash

# Definindo cores
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # Sem cor

# Banner
banner(){
cat << "EOF"
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⠶⠶⠶⠶⢦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⠛⠁⠀⠀⠀⠀⠀⠀⠈⠙⢷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠸⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⣠⡴⠞⠛⠉⠉⣩⣍⠉⠉⠛⠳⢦⣄⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡀⠀⣴⡿⣧⣀⠀⢀⣠⡴⠋⠙⢷⣄⡀⠀⣀⣼⢿⣦⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣧⡾⠋⣷⠈⠉⠉⠉⠉⠀⠀⠀⠀⠉⠉⠋⠉⠁⣼⠙⢷⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣇⠀⢻⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀⣸⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣹⣆⠀⢻⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡟⠀⣰⣏⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⠞⠋⠁⠙⢷⣄⠙⢷⣀⠀⠀⠀⠀⠀⠀⢀⡴⠋⢀⡾⠋⠈⠙⠻⢦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⠋⠀⠀⠀⠀⠀⠀⠹⢦⡀⠙⠳⠶⢤⡤⠶⠞⠋⢀⡴⠟⠀⠀⠀⠀⠀⠀⠙⠻⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣼⠋⠀⠀⢀⣤⣤⣤⣤⣤⣤⣤⣿⣦⣤⣤⣤⣤⣤⣤⣴⣿⣤⣤⣤⣤⣤⣤⣤⡀⠀⠀⠙⣧⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣸⠏⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⢠⣴⠞⠛⠛⠻⢦⡄⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠸⣇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢠⡟⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⣿⣿⢶⣄⣠⡶⣦⣿⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⢻⡄⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣾⠁⠀⠀⠀⠀⠘⣇⠀⠀⠀⠀⠀⠀⠀⢻⣿⠶⠟⠻⠶⢿⡿⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠈⣿⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢰⡏⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⢾⣄⣹⣦⣀⣀⣴⢟⣠⡶⠀⠀⠀⠀⠀⠀⣼⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠈⠛⠿⣭⣭⡿⠛⠁⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠘⣧⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⢿⡀⠀⠀⠀⠀⠀⠀⣀⡴⠞⠋⠙⠳⢦⣀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⢰⡏⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠈⢿⣄⣀⠀⠀⢀⣤⣼⣧⣤⣤⣤⣤⣤⣿⣭⣤⣤⣤⣤⣤⣤⣭⣿⣤⣤⣤⣤⣤⣼⣿⣤⣄⠀⠀⣀⣠⡾⠁⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⠻⢧⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠼⠟⠛⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀
⣷⣶⣶⣶⣶⣶⣶⣿⣷⣶⣿⣿⣾⣿⣶⣶⣿⣿⣷⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣷⣷⣿⣷⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣷⣶⣿⣿
EOF
echo -e "${BLUE}+ -- --=[Scanner by MRX${NC}"
echo -e "${YELLOW}+ -- --= Scanner Subdmains :)${NC}"
}

# Executando o banner
banner

# Verificando a entrada do domínio
read -p "Enter the domain: " domain

# Verificando se o domínio foi fornecido
if [ -z "$domain" ]; then
    echo -e "${RED}Error: Domain not provided.${NC}"
    exit 1
fi

# Carregar as variáveis do arquivo config.txt
source config.txt

# Criando pasta para o domínio
folder="$domain"
mkdir -p "$folder"

# Executando subfinder para encontrar subdomínios
echo -e "\e[33mRunning subfinder\e[0m"
subfinder -d "$domain" -all -o "$folder/subfinder_tmp.txt"
# Contar as linhas do arquivo
echo -e "\e[1;31m$(wc -l < "$folder/subfinder_tmp.txt")\e[0m"

# Executando amass para encontrar subdomínios
echo -e "\e[33mRunning amass\e[0m"
amass enum -passive -norecursive -d "$domain" -o "$folder/amass_tmp.txt"
cat "$folder/amass_tmp.txt" | oam_subs -names -d "$domain" > "$folder/amass_tmp2.txt"
rm "$folder/amass_tmp.txt"
# Contar as linhas do arquivo
echo -e "\e[1;31m$(wc -l < "$folder/amass_tmp2.txt")\e[0m"

# Executando Findomain
echo -e "\e[33mRunning Findomain\e[0m"
findomain -t "$domain" -q 2>/dev/null > "$folder/Findomain_tmp.txt"
# Contar as linhas do arquivo
echo -e "\e[1;31m$(wc -l < "$folder/Findomain_tmp.txt")\e[0m"

# Executando Assetfinder
echo -e "\e[33mRunning Assetfinder\e[0m"
assetfinder --subs-only "$domain" > "$folder/Assetfinder_tmp.txt"
# Contar as linhas do arquivo
echo -e "\e[1;31m$(wc -l < "$folder/Assetfinder_tmp.txt")\e[0m"

# Executando chaos
echo -e "\e[33mRunning Chaos\e[0m"
chaos -key $CHAOS_API_KEY -d "$domain" -o "$folder/chaos_tmp.txt"
# Contar as linhas do arquivo
echo -e "\e[1;31m$(wc -l < "$folder/chaos_tmp.txt")\e[0m"

#gau-subdomains
echo -e "\e[33mRunning Gau subdomains\e[0m"
gau --subs "$domain" | unfurl -u domains > "$folder/gau_tmp.txt"
# Contar as linhas do arquivo
echo -e "\e[1;31m$(wc -l < "$folder/gau_tmp.txt")\e[0m"

#github-subdomains verificar Api
echo -e "\e[33mRunning Github subdomains\e[0m"
github-subdomains -d "$domain" -t $GITHUB_TOKEN -o "$folder/github_tmp.txt"
# Contar as linhas do arquivo
echo -e "\e[1;31m$(wc -l < "$folder/github_tmp.txt")\e[0m"

#gitlab-subdomains verificar Api
echo -e "\e[33mRunning Gitlab subdomains\e[0m"
gitlab-subdomains -d "$domain" -t $GITLAB_TOKEN > "$folder/gitlab_tmp.txt"
# Contar as linhas do arquivo
echo -e "\e[1;31m$(wc -l < "$folder/gitlab_tmp.txt")\e[0m"

#cero-subdomains
echo -e "\e[33mRunning Cero subdomains\e[0m"
cero "$domain" > "$folder/cero_temp.txt"
# Contar as linhas do arquivo
echo -e "\e[1;31m$(wc -l < "$folder/cero_temp.txt")\e[0m"

#center-subdomains
echo -e "\e[33mRunning Center subdomains\e[0m"
curl "https://api.subdomain.center/?domain=$domain" -s | jq -r '.[]' | sort -u > "$folder/center_tmp.txt"
# Contar as linhas do arquivo
echo -e "\e[1;31m$(wc -l < "$folder/center_tmp.txt")\e[0m"

# Executando Sublist3r
# colocar caminho Sublist3r
echo -e "\e[33mRunning Sublist3r\e[0m"
python3 ~/tools/Sublist3r/sublist3r.py -d "$domain" -v -o "$folder/Sublist3r_tmp.txt"
# Contar as linhas do arquivo
echo -e "\e[1;31m$(wc -l < "$folder/Sublist3r_tmp.txt")\e[0m"

# Executando jldc
echo -e "\e[33mRunning jldc\e[0m"
curl -s "https://jldc.me/anubis/subdomains/$domain" | grep -Po "((http|https):\/\/)?(([\w.-]*)\.([\w]*)\.([A-z]))\w+" | grep "$domain" | grep -v "*" | sed -e 's/^[[:punct:]]//g' | sed -r '/^\s*$/d' | sort -u > "$folder/jldc_tmp.txt"
# Contar as linhas do arquivo
echo -e "\e[1;31m$(wc -l < "$folder/jldc_tmp.txt")\e[0m"

# Executando wayback
echo -e "\e[33mRunning wayback\e[0m"
curl -sk "http://web.archive.org/cdx/search/cdx?url=*.$domain&output=txt&fl=original&collapse=urlkey&page=" | awk -F/ '{gsub(/:.*/, "", $3); print $3}' | sort -u > "$folder/wayback_tmp.txt"
# Contar as linhas do arquivo
echo -e "\e[1;31m$(wc -l < "$folder/wayback_tmp.txt")\e[0m"

# Executando crt
echo -e "\e[33mRunning crt\e[0m"
curl -sk "https://crt.sh/?q=%.$domain&output=json" | tr ',' '\n' | awk -F'"' '/name_value/ {gsub(/\*\./, "", $4); gsub(/\\n/,"\n",$4);print $4}' | sort -u > "$folder/crt_tmp.txt"
# Contar as linhas do arquivo
echo -e "\e[1;31m$(wc -l < "$folder/crt_tmp.txt")\e[0m"

# Executando abuseipdb
echo -e "\e[33mRunning abuseipdb\e[0m"
curl -s "https://www.abuseipdb.com/whois/$domain" -H "user-agent: firefox" -b "abuseipdb_session=" | grep -E '<li>\w.*</li>' | sed -E 's/<\/?li>//g' | sed -e "s/$/.$domain/" | sort -u > "$folder/abuseipdb_tmp.txt"
# Contar as linhas do arquivo 
echo -e "\e[1;31m$(wc -l < "$folder/abuseipdb_tmp.txt")\e[0m"

# Executando alienvault
echo -e "\e[33mRunning alienvault\e[0m"
curl -s "https://otx.alienvault.com/api/v1/indicators/domain/$domain/passive_dns" | jq '.passive_dns[].hostname' 2>/dev/null | grep -o "\w.*$domain" | sort -u > "$folder/alienvault_tmp.txt"
# Contar as linhas do arquivo 
echo -e "\e[1;31m$(wc -l < "$folder/alienvault_tmp.txt")\e[0m"

# Executando urlscan.io
echo -e "\e[33mRunning urlscan\e[0m"
curl -s "https://urlscan.io/api/v1/search/?q=domain:$domain" | jq '.results[].page.domain' 2>/dev/null | grep -o "\w.*$domain"| sort -u > "$folder/urlscan_tmp.txt"
# Contar as linhas do arquivo 
echo -e "\e[1;31m$(wc -l < "$folder/urlscan_tmp.txt")\e[0m"

# Executando RapidDNS
echo -e "\e[33mRunning RapidDNS\e[0m"
curl -s "https://rapiddns.io/subdomain/$domain?full=1#result" | grep -v "RapidDNS" | grep -v "<td><a" | cut -d '>' -f 2 | cut -d '<' -f 1 | grep "$domain" | grep -v "*" | sed -e 's/^[[:punct:]]//g' | sed -r '/^\s*$/d' | sort -u > "$folder/RapidDNS_tmp.txt"
# Contar as linhas do arquivo 
echo -e "\e[1;31m$(wc -l < "$folder/RapidDNS_tmp.txt")\e[0m"

# Limpando e ordenando subdomínios
echo -e "\e[33mCleaning and sorting subdomains\e[0m"
cat "$folder/subfinder_tmp.txt" "$folder/amass_tmp2.txt" "$folder/Findomain_tmp.txt" "$folder/Assetfinder_tmp.txt" "$folder/Sublist3r_tmp.txt" "$folder/jldc_tmp.txt" "$folder/wayback_tmp.txt" "$folder/crt_tmp.txt" "$folder/abuseipdb_tmp.txt" "$folder/alienvault_tmp.txt" "$folder/urlscan_tmp.txt" "$folder/RapidDNS_tmp.txt" "$folder/chaos_tmp.txt" "$folder/gau_tmp.txt" "$folder/github_tmp.txt" "$folder/gitlab_tmp.txt" "$folder/cero_temp.txt" "$folder/center_tmp.txt" > "$folder/subdomains_tmp1.txt"
sort -u "$folder/subdomains_tmp1.txt" > "$folder/subdomains1.txt"
cat "$folder/subdomains1.txt" | alterx | dnsx > "$folder/subdomains2.txt"
cat "$folder/subdomains1.txt" "$folder/subdomains2.txt" | sort -u > "$folder/subdomains.txt"
rm "$folder/subfinder_tmp.txt" "$folder/amass_tmp2.txt" "$folder/Findomain_tmp.txt" "$folder/Assetfinder_tmp.txt" "$folder/Sublist3r_tmp.txt" "$folder/jldc_tmp.txt" "$folder/wayback_tmp.txt" "$folder/crt_tmp.txt" "$folder/abuseipdb_tmp.txt" "$folder/alienvault_tmp.txt" "$folder/urlscan_tmp.txt" "$folder/RapidDNS_tmp.txt" "$folder/chaos_tmp.txt" "$folder/gau_tmp.txt" "$folder/github_tmp.txt" "$folder/gitlab_tmp.txt" "$folder/cero_temp.txt" "$folder/center_tmp.txt"
rm "$folder/subdomains_tmp1.txt" "$folder/subdomains1.txt" "$folder/subdomains2.txt"
echo -e "\e[1;31m$(wc -l < "$folder/subdomains.txt")\e[0m"

# Executando Naabu Portas Scan
echo -e "\e[33mRunning naabu...\e[0m"
naabu -host "$folder/subdomains.txt" -tp 1000 > "$folder/PortScan.txt"

# Executando httpx para encontrar subdomínios ativos
echo -e "\e[33mFinding live subdomains...\e[0m"
httpx -l "$folder/subdomains.txt" -o "$folder/live_subdomains.txt"
echo -e "\e[1;31m$(wc -l < "$folder/live_subdomains.txt")\e[0m"

# filter subdomains by keywords
echo -e "\e[33mfilter subdomains by keywords...\e[0m"
cat "$folder/live_subdomains.txt" | egrep -i "internal|api|test|prod|private|secret|git|login|admin|staging|dev|jira|intranet|vip|portal|register|pass|reset|client|database|server|backup|Credential|database|docker|encryption|security|authorization|authentication|monitoring|logging|certificate|token|integration|endpoint|validation|configuration|deployment" > "$folder/active_priority.txt"
echo -e "\e[1;31m$(wc -l < "$folder/active_priority.txt")\e[0m"

echo -e "\e[33mScan Concluido\e[0m"