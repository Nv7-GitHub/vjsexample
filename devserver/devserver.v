module main

import vweb

const (
	port = 8080
)

struct App {
	vweb.Context
}

fn main() {
	vweb.run<App>(port)
}

pub fn (mut app App) init_server() {
	app.serve_static("/", "index.html", "text/html")
	app.serve_static("/main.js", "main.js", "text/javascript")
}