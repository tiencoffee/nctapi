(async function(){
  var fetch;
  fetch = require('node-fetch');
  module.exports = (async (req, res) => {
    var ref$, q, page, html;
    ref$ = req.query, q = ref$.q, page = ref$.page;
    html = (await (await fetch("https://www.nhaccuatui.com/tim-kiem/bai-hat?q=" + q)).text());
    res.send(html);
  });
}).call(this);
