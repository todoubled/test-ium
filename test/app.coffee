connect = require 'connect'
http = require 'http'

app = connect()

app.use (req, res) ->
  res.end '<html><h1>Hello World</h1></html>\n'

http.createServer(app).listen(3000)
