module main

struct JS.HTMLElement {
pub:
tagName string

mut:
innerText string
innerHTML string
classList JS.ClassList
children []JS.HTMLElement
style JS.Style
}
fn (el JS.HTMLElement) addEventListener(type_ string, handler fn()) {}
fn (el JS.HTMLElement) appendChild(child JS.HTMLElement) {}
fn (el JS.HTMLElement) removeChild(child JS.HTMLElement) {}
fn (el JS.HTMLElement) setAttribute(name string, val any) {}

struct JS.Style {}
fn (s JS.Style) setProperty(tag string, value string) {}
fn (s JS.Style) getPropertyValue(tag string) string {}
fn (s JS.Style) removeProperty(tag string) {}

struct JS.ClassList {}
fn (c JS.ClassList) add(class string) {}
fn (c JS.ClassList) remove(class string) {}

fn JS.document.createElement(type_ string) JS.HTMLElement
fn JS.document.getElementsByTagName(tag string) []JS.HTMLElement