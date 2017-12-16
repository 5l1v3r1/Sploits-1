#!/bin/bash
# GoogD0rker v0.1
# ZephrFish
#
# Google D0rker - Multiple Search Terms for OSINT on a Domain
# Based on Goohak(https://github.com/1N3/Goohak), however adopted for OSX & Tweaked
# Designed for OSX
echo "Designed for OSX"

TARGET="$1"

open 2> /dev/null &
sleep 5

# Google Dorks
echo "Opening Browser with search terms per tab"

# FIND LOGIN PAGES:
open "https://www.google.com/search?q=site:$TARGET+username+OR+password+OR+login+OR+root+OR+admin" --args --incognito 2> /dev/null
# SEARCH FOR BACKDOORS:
open "https://www.google.com/search?q=site:$TARGET+inurl:shell+OR+inurl:backdoor+OR+inurl:wso+OR+inurl:cmd+OR+shadow+OR+passwd+OR+boot.ini+OR+inurl:backdoor" --args --incognito 2> /dev/null
# FIND SETUP OR INSTALL FILES:
open "https://www.google.com/search?q=site:$TARGET+inurl:readme+OR+inurl:license+OR+inurl:install+OR+inurl:setup+OR+inurl:config" --args --incognito 2> /dev/null
# FIND WORDPRESS PLUGINS/UPLOADS/DOWNLOADS:
open "https://www.google.com/search?q=site:$TARGET+inurl:wp-+OR+inurl:plugin+OR+inurl:upload+OR+inurl:download" --args --incognito 2> /dev/null
# FIND OPEN REDIRECTS:
open "https://www.google.com/search?q=site:$TARGET+inurl:redir+OR+inurl:url+OR+inurl:redirect+OR+inurl:return+OR+inurl:src=http+OR+inurl:r=http" --args --incognito 2> /dev/null
# FIND FILES BY EXTENSION:
open "https://www.google.com/search?q=site:$TARGET+ext:cgi+OR+ext:php+OR+ext:asp+OR+ext:aspx+OR+ext:jsp+OR+ext:jspx+OR+ext:swf+OR+ext:fla+OR+ext:xml" --args --incognito 2> /dev/null
# FIND DOCUMENTS BY EXTENSION:
open "https://www.google.com/search?q=site:$TARGET+ext:doc+OR+ext:docx+OR+ext:csv+OR+ext:pdf+OR+ext:txt+OR+ext:log+OR+ext:bak" --args --incognito 2> /dev/null
# FIND APACHE STRUTS RCE's:
open "https://www.google.com/search?q=site:$TARGET+ext:action+OR+ext:struts+OR+ext:do" --args --incognito 2> /dev/null
# FIND PASTEBIN POSTS FOR DOMAIN:
open "https://www.google.com/search?q=site:pastebin.com+$TARGET" --args --incognito 2> /dev/null
# FIND EMPLOYEES ON LINKEDIN:
open "https://www.google.com/search?q=site:linkedin.com+employees+$TARGET" --args --incognito 2> /dev/null
# FIND Subdomains
open "https://www.google.com/search?q=site:*.$TARGET" --args --incognito 2> /dev/null
# FIND Sub-subdomains
open "https://www.google.com/search?q=site:*.*.$TARGET" --args --incognito 2> /dev/null
# FIND PHPINFO Files
open "https://www.google.com/search?q=inurl:'/phpinfo.php'+$TARGET" --args --incognito 2> /dev/null
# FIND .htaccess & sensitive fiels
open "https://www.google.com/search?q=inurl:'/phpinfo.php'+OR+inurl:'.htaccess'+OR+inurl:'/.git'+$TARGET+-github" --args --incognito 2> /dev/null
