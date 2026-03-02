# Sync version from index.html to en/ and he/ (sitebump only bumps root)
VER=$(grep -oP '<span class="version">v\K[0-9]+\.[0-9]+\.[0-9]+' index.html)
if [[ -n "$VER" ]]; then
    sed -i "s|<span class=\"version\">v[0-9]*\.[0-9]*\.[0-9]*</span>|<span class=\"version\">v${VER}</span>|" en/index.html he/index.html
fi
