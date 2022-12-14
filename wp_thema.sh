function wp_thema(){
        echo -e "\n[*] Extracting information..." > extractTheme.tmp
        curl -s https://$1 | grep -oP '/themes/.*' | awk '{print "The Thema use is: "$3}' FS='/' | head -1 >> extractTheme.tmp
        cat extractTheme.tmp | grep Thema ; rm extractTheme.tmp
}
