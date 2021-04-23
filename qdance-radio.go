package main

import "github.com/webview/webview"

func main() {
	w := webview.New(false)
	defer w.Destroy()
	w.SetTitle("Q-Dance Radio")
	w.SetSize(400, 540, webview.HintNone)
	w.Navigate("https://www.q-dance.com/en/radio/")
	w.Init("document.body.style.background = 'black'; document.addEventListener('DOMContentLoaded', (event) => { document.getElementsByClassName('cc-grower').style.display = 'none'; document.getElementyById('cookiebanner').style.display = 'none'; });")
	w.Run()
}
