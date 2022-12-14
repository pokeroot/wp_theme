function wp_theme(){
        echo -e "\n[*] Extracting information..."
        curl -s https://$1 | grep -oP '/themes/.*' | awk '{print "The Theme in use is: "$3}' FS='/' | head -1 > extractTheme.tmp
        cat extractTheme.tmp | grep Theme ; rm extractTheme.tmp
}
