express = require 'express'
readability = require 'readabilitySAX'

app = express()

app.get('/scrape', (request, response) ->
  url = request.query.url

  body = { "test": "foo"}
  response.type 'json'
  response.json body
  console.log "Got request"
)

app.listen(4000)
