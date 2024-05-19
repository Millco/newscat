# NEWSCAT

<code>
  
  Set-Up:<br>
  Required: R, RStudio, R Pakete: rvest, Dropbox, Calibre<br>
  
##  Dropbox:<br>

  download dropbox server: wget https://edge.dropboxstatic.com/dbx-releng/client/dropbox-lnx.x86_64-199.4.6287.tar.gz<br>
  show hidden folder: ls -ld .?*; <br>
  move in den home folder: mv ./dropbox-dist ~<br>
  oder: https://www.dropbox.com/install-linux anleitung für installation<br>
  https://www.dropbox.com/download?dl=packages/dropbox.py zum ausführen über terminal<br>
  mv Downloads/dropbox.py .dropbox-dist/<br>
  python3 .dropbox-dist/dropbox.py <command><br>
  
  1. R-Script newscat_nporg.R ausführen<br>
  2. Konvertieren: ebook-convert ~/R/newscat/np.html ~/Dropbox/newscat/newscat$(date "+%y-%m-%d).epub (https://manual.calibre-ebook.com/generated/en/ebook-convert.html)<br> 
  3. <br>

</code>
