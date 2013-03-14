express = require 'express'
readability = require 'readabilitySAX'

GetURI = require './get_uri'
get_uri = new GetURI

app = express()

app.get('/scrape', (request, response) ->
  url = request.query.url

  console.log "Handling request for #{url}"

  bodyWasParsed = (readable_data) ->
    response.json readable_data

  parseResponse = (data) ->
    response.type 'json'

    if data.error
      response.json data
    else
      stream = new readability.WritableStream({}, bodyWasParsed)
      stream.write(data)
      stream.end()

  get_uri.fetch(url, parseResponse)
)

app.listen(4000)
