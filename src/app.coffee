express = require 'express'
readability = require 'readabilitySAX'
_ = require 'underscore'

isDefined = (value) ->
  !(_.isNull value) && !(_.isUndefined value)

GetURI = require './get_uri'
getUri = new GetURI

app = express()

app.get '/scrape', (request, response) ->
  if isDefined request.query.url
    url = decodeURIComponent(request.query.url)
    console.log "Handling request for #{url}"

    bodyWasParsed = (readableData) ->
      response.json readableData

    parseResponse = (data) ->
      response.type 'json'

      if data.error
        response.json data
      else
        stream = new readability.WritableStream({}, bodyWasParsed)
        stream.write(data)
        stream.end()

    getUri.fetch(url, parseResponse)
  else
    console.error "Bad request for #{request.url}"
    response.type = 'json'
    response.status 422
    response.json {error: "Unproccessable Entity."}


app.listen(4000)
