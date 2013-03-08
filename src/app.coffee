express = require 'express'
app = express()

app.get('/scrape', (request, response) ->
  body = { "test": "foo"}
  response.type 'json'
  response.json body
  console.log "Got request"
)

app.listen(4000)
