wttr()
{   
    # change Berlin to your default location
    local request="wttr.in/${1-Riga}"
    [ "$(tput cols)" -lt 125 ] && request+='?n'
    curl -H "Accept-Language: ${LANG%_*}" --compressed "$request"
}

wttr
