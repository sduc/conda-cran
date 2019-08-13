curl -k1 -s https://cran.r-project.org/web/packages/available_packages_by_name.html | grep '<a href="../../web/packages/' | sed 's+.*<a href="[^"]*">\([^<]*\)</a>.*+\1+g'
