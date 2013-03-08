express = require 'express'
app = express()

app.post('/scrape', (request, response) ->
  body = 'Hello world'

  response.setHeader 'Content-Type', 'text/json'
  response.setHeader 'Content-Length', body.length
  response.end body
  console.log "Got request"
)

app.listen(4000)
