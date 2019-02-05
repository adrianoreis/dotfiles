#The default colored output is not readable on light themes
function cs() {
  curl -s "https://cht.sh/$1?style=paraiso-light" 
}
