require! {
	path
	"fs-extra": fs
	\../../npm/tieens/livescript.min.js
}
process.chdir __dirname

fs.emptyDirSync \api
files = fs.readdirSync \src
for file in files
	name = /\w+(?=\.\w+$)/exec file .0
	code = fs.readFileSync "src/#file" \utf8
	code = livescript.compile code, header: no
	fs.writeFileSync "api/#name.js" code
