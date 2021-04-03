require! {
	"node-fetch": fetch
}

module.exports = (req, res) !~>
	{q, page} = req.query
	html = await (await fetch "https://www.nhaccuatui.com/tim-kiem/bai-hat?q=#q")text!
	res.send(html)
