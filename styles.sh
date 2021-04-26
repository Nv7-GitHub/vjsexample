echo "Styling..."
echo "module main
fn load_styles() {
  mut el := JS.document.createElement('style')
  el.innerHTML = '$(cat styles.css | tr '\n' ' ')'
  mut body := JS.document.getElementsByTagName('body')[0]
  body.appendChild(el)
}
" > styles.v