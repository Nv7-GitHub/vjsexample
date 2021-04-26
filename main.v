module main

fn main() {
	mut body := JS.document.getElementsByTagName("body")[0]

	// Styles
	load_styles()

	// Button
	mut el := JS.document.createElement("button")
	el.innerText = "Click Me!"
	el.classList.add("styledBtn")
	
	el.addEventListener("click", fn() {
		val := el.style.getPropertyValue("left")
		if val == "" {
			el.style.setProperty("left", "calc(100% - 5em)")
			return
		}
		if val == "calc(100% - 5em)" {
			el.style.setProperty("left", "calc(5em)")
			return
		}
		el.style.removeProperty("left")
	})
	
	body.appendChild(el)
}